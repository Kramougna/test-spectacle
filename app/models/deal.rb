class Deal < ApplicationRecord
  enum source: %i[window digitik]

  belongs_to :user
  has_many :tickets
  has_many :representations, through: :tickets

  validates :user, :source, presence: true
end
