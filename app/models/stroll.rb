class Stroll < ApplicationRecord
  belongs_to :dogsitter#, optional: true
  has_many :meetings
  has_many :dogs, through: :meetings
end
