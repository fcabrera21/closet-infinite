module Contexts
  module Colors
    # Context for colors (assumes no prior contexts)
    
    def create_colors
      @red = FactoryGirl.create(:color)
      @black = FactoryGirl.create(:color, name: "Black")
      @blue = FactoryGirl.create(:color, name: "Blue")
    end
    
    def destroy_colors
      @red.delete
      @black.delete
      @blue.delete
    end

  end
end