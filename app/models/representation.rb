class Representation < ApplicationRecord
  belongs_to :spectacle

  validates :spectacle, :start_date, :end_date, presence: true
end
