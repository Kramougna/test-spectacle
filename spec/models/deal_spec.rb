require 'rails_helper'

RSpec.describe Deal, type: :model do
  describe 'with valid user' do
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
    end

    it 'is valid if required fiels are set' do
      deal = Deal.new(
        user: @user,
        source: :window
      )

      expect(deal).to be_valid
    end

    it 'is invalid without source' do
      deal = Deal.new(
        user: @user
      )

      expect(deal).not_to be_valid
    end
  end

  it 'is invalid without user' do
    deal = Deal.new(
      source: :window
    )

    expect(deal).not_to be_valid
  end
end
