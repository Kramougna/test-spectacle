class Ticket < ApplicationRecord
  belongs_to :representations
  belongs_to :users
  belongs_to :transactions
end
