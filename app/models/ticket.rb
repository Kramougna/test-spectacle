class Ticket < ApplicationRecord
  enum type: %i[individual subscription]

  belongs_to :representation
  belongs_to :user
  belongs_to :deal
end
