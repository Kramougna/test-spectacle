class Transaction < ApplicationRecord
  belongs_to :users
  has_many :tickets
end
