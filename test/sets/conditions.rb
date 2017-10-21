module Contexts
  module Conditions
    # Context for conditions (assumes no prior contexts)
    
    def create_conditions
      @like_new = FactoryGirl.create(:condition, name: "Like New")
      @good = FactoryGirl.create(:condition, name: "Good")
      @poor = FactoryGirl.create(:condition, name: "Poor")
    end
    
    def destroy_conditions
      @like_new.delete
      @good.delete
      @poor.delete
    end

  end
end