module Contexts
  module Items
    # Context for items (assumes condition, size contexts)
    def create_items
      @alexe_o1_1   = FactoryGirl.create(:order_item, order: @alexe_o1, item: @honey_wheat, quantity: 1, shipped_on: 4.days.ago.to_date)
    end
    
    def destroy_items
      @alexe_o1_1.delete
    end

  end
end


