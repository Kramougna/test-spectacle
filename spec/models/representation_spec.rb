require 'rails_helper'

RSpec.describe Representation, type: :model do
  describe 'with valid spectacle' do
    before(:all) do
      @spectacle = Spectacle.create(
        name: 'representation one'
      )
    end

    it 'is valid if required fiels are set' do
      representation = Representation.new(
        spectacle: @spectacle,
        price: '12',
        start_date: Time.now,
        end_date: Time.now
      )

      expect(representation).to be_valid
    end

    it 'is invalid without price' do
      representation = Representation.new(
        spectacle: @spectacle,
        start_date: Time.now,
        end_date: Time.now
      )

      expect(representation).not_to be_valid
    end

    it 'is invalid without start_date' do
      representation = Representation.new(
        spectacle: @spectacle,
        price: '12',
        end_date: Time.now
      )

      expect(representation).not_to be_valid
    end

    it 'is invalid without end_date' do
      representation = Representation.new(
        spectacle: @spectacle,
        price: '12',
        start_date: Time.now
      )

      expect(representation).not_to be_valid
    end
  end

  it 'is invalid without spectacle' do
    representation = Representation.new(
      price: '12',
      start_date: Time.now,
      end_date: Time.now
    )

    expect(representation).not_to be_valid
  end
end
