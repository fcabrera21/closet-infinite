class ItemColor < ActiveRecord::Base
  belongs_to :item
  belongs_to :color

  validates_presence_of :item, :color
end
