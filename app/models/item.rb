class Item < ActiveRecord::Base
  
	# Relationships
  belongs_to :size
  belongs_to :condition
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :color_items
end
