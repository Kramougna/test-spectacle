class Deal < ApplicationRecord
  enum type: %i[window digitik]

  belongs_to :user
  has_many :tickets
end
