class Dogsitter < ApplicationRecord
  belongs_to :city#, optional: true
  has_many :strolls
  has_many :meetings, through: :strolls
  has_many :dogs, through: :meetings
end
