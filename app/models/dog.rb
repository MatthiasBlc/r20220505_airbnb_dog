class Dog < ApplicationRecord
  has_and_belongs_to_many :strolls
  belongs_to :city, optional: true
  has_many :dogsitters, through: :strolls
end
