class Item < ActiveRecord::Base
  belongs_to :color
  belongs_to :size
end
