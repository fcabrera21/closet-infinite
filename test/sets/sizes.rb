module Contexts
  module Sizes
    # Context for sizes (assumes no prior contexts)
    
    def create_sizes
      @large = FactoryGirl.create(:size, name: "Large (L)")
      @medium = FactoryGirl.create(:size, name: "Medium (M)")
      @small = FactoryGirl.create(:size, name: "Small (S)")
    end
    
    def destroy_sizes
      @large.delete
      @medium.delete
      @small.delete
    end

  end
end