# require needed files
require './test/sets/colors'
require './test/sets/conditions'
require './test/sets/sizes'
require './test/sets/items'
require './test/sets/item_colors'

module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::Colors
  include Contexts::Conditions
  include Contexts::Sizes
  include Contexts::Items
  include Contexts::ItemColors
end