module Contexts
  module Colors
    # Context for colors (assumes no prior contexts)
    
    def create_colors
      @red = FactoryGirl.create(:color)
      @yellow = FactoryGirl.create(:color, name: "Yellow")
      @blue = FactoryGirl.create(:color, name: "Blue")
    end
    
    def destroy_colors
      @red.delete
      @yellow.delete
      @blue.delete
    end

  end
end