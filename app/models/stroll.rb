class Stroll < ApplicationRecord
  belongs_to :dogsitter
  has_and_belongs_to_many :dogs
  belongs_to :city, optional: true
end
