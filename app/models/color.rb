class Color < ActiveRecord::Base

	# Relationships
  has_many :items
end
