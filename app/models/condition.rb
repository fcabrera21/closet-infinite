class Condition < ActiveRecord::Base
	
	# Relationships
  has_many :items
end
