require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid if required fiels are set' do
    user = User.new(
      first_name: 'michel',
      last_name: 'dupont',
      address: 'rue du test',
      country: 'Paris',
      zip_code: 75500,
      birth_date: Time.now,
      email: 'test@mymail.com'
    )

    expect(user).to be_valid
  end

  it 'is invalid without first_name' do
    user = User.new(
      last_name: 'dupont',
      address: 'rue du test',
      country: 'Paris',
      zip_code: 75500,
      birth_date: Time.now,
      email: 'test@mymail.com'
    )

    expect(user).not_to be_valid
  end

  it 'is invalid without last_name' do
    user = User.new(
      first_name: 'michel',
      address: 'rue du test',
      country: 'Paris',
      zip_code: 75500,
      birth_date: Time.now,
      email: 'test@mymail.com'
    )

    expect(user).not_to be_valid
  end

  it 'is invalid without address' do
    user = User.new(
      first_name: 'michel',
      last_name: 'dupont',
      country: 'Paris',
      zip_code: 75500,
      birth_date: Time.now,
      email: 'test@mymail.com'
    )

    expect(user).not_to be_valid
  end

  it 'is invalid without country' do
    user = User.new(
      first_name: 'michel',
      last_name: 'dupont',
      address: 'rue du test',
      zip_code: 75500,
      birth_date: Time.now,
      email: 'test@mymail.com'
    )

    expect(user).not_to be_valid
  end

  it 'is invalid without zip_code' do
    user = User.new(
      first_name: 'michel',
      last_name: 'dupont',
      address: 'rue du test',
      country: 'Paris',
      birth_date: Time.now,
      email: 'test@mymail.com'
    )

    expect(user).not_to be_valid
  end

  it 'is invalid without email' do
    user = User.new(
      first_name: 'michel',
      last_name: 'dupont',
      address: 'rue du test',
      country: 'Paris',
      zip_code: 75500,
      birth_date: Time.now,
    )

    expect(user).not_to be_valid
  end
end
