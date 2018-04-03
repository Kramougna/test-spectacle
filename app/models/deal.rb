class Deal < ApplicationRecord
  enum payment: %i[window digitik]

  belongs_to :user
  has_many :tickets

  validates :user, :payment, presence: true
end
