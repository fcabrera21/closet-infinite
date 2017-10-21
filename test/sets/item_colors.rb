module Contexts
  module ItemColors
    # Context for item_colors (assumes condition, size, item, color contexts)
    
    def create_item_colors
      @black_dress_color1 = FactoryGirl.create(:item_color, item: @black_dress, color: @black)
      # @black = FactoryGirl.create(:color, name: "Black")
      # @blue = FactoryGirl.create(:color, name: "Blue")
    end
    
    def destroy_item_colors
      @black_dress_color1.delete
      # @black.delete
      # @blue.delete
    end

  end
end