class Pet < ApplicationRecord

  validates :name, presence: true
  SPECIES = %w(dog cat snake rabbit turtle)
  validates :species, inclusion: { in: SPECIES }
end
