require 'rails_helper'

RSpec.describe Ticket, type: :model do
  describe 'valid user, deal and representation are available' do
    before(:all) do
      @user = User.create(
        first_name: 'michel',
        last_name: 'dupont',
        address: 'rue du test',
        country: 'Paris',
        zip_code: 75500,
        birth_date: Time.now,
        email: 'test@mymail.com'
      )

      @deal = Deal.create(
        user: @user,
        source: :window
      )

      @spectacle = Spectacle.create(
        name: 'representation one'
      )

      @representation = Representation.new(
        spectacle: @spectacle,
        price: '12',
        start_date: Time.now,
        end_date: Time.now
      )
    end

    it 'is valid if required fiels are set' do
      ticket = Ticket.new(
        user: @user,
        deal: @deal,
        representation: @representation,
        payment: :individual
      )

      expect(ticket).to be_valid
    end

    it 'is invalid without payment' do
      ticket = Ticket.new(
        user: @user,
        deal: @deal,
        representation: @representation
      )

      expect(ticket).not_to be_valid
    end

    it 'is invalid without user' do
      ticket = Ticket.new(
        deal: @deal,
        representation: @representation,
        payment: :individual
      )

      expect(ticket).not_to be_valid
    end

    it 'is invalid without deal' do
      ticket = Ticket.new(
        user: @user,
        representation: @representation,
        payment: :individual
      )

      expect(ticket).not_to be_valid
    end

    it 'is invalid without representation' do
      ticket = Ticket.new(
        user: @user,
        deal: @deal,
        payment: :individual
      )

      expect(ticket).not_to be_valid
    end
  end
end
