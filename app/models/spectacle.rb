class Spectacle < ApplicationRecord
  has_many :representations

  validates :name, presence: true
end
