class Dog < ApplicationRecord
  belongs_to :city#, optional: true
  has_many :meetings
  has_many :strolls, through: :meetings
end
