class Color < ActiveRecord::Base

	# Relationships
  has_many :color_items
  # has_many :order_items, through: :items

  # Validations
  validates_presence_of :name

  # before_destroy :is_destroyable?
  # after_rollback :convert_to_inactive

  # private
  # def is_destroyable?
  #   @destroyable = (self.items.empty?
  # end
  
  # def convert_to_inactive
  #   make_inactive if !@destroyable.nil? && @destroyable == false
  #   @destroyable = nil
  # end
end
