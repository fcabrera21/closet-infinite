class Size < ActiveRecord::Base

	# Relationships
  has_many :items

  # Validations
  validates_presence_of :name
end
