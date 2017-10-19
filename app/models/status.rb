class Status < ActiveRecord::Base

	# Relationships
  has_many :order_items
end
