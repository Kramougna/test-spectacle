require 'rails_helper'

RSpec.describe Spectacle, type: :model do
  it 'is valid if required fiels are set' do
    spectale = Spectacle.new(
      name: 'spectale one',
    )

    expect(spectale).to be_valid
  end

  it 'is invalid without name' do
    spectale = Spectacle.new(
      name: nil,
    )

    expect(spectale).not_to be_valid
  end
end
