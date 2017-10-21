class Status < ActiveRecord::Base

	# Relationships
  has_many :order_items

  # Validations
  validates_presence_of :name
end
