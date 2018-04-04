class Ticket < ApplicationRecord
  enum payment: %i[individual subscription]

  belongs_to :representation
  belongs_to :user
  belongs_to :deal

  validates :representation, :user, :deal, :payment, presence: true
end
