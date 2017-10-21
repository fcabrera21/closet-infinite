module Contexts
  module Colors
    # Context for colors (assumes no prior contexts)
    
    def create_colors
      @red = FactoryGirl.create(:color)
      @black = FactoryGirl.create(:color, name: "Black")
      @blue = FactoryGirl.create(:color, name: "Blue")
      @cranberry = FactoryGirl.create(:color, name: "Cranberry", active: false)
    end
    
    def destroy_colors
      @red.delete
      @black.delete
      @blue.delete
      @cranberry.delete
    end

  end
end