module Contexts
  module Items
    # Context for items (assumes condition, size contexts)
    def create_items
      @black_dress = FactoryGirl.create(:item,
                    name: "Little Black Dress",
                    condition: @like_new,
                    size: @medium,
                    brand: "Nordstrom",
                    gender: "female",
                    note: "Perfect dress for both a date and an interview.",
                    renting_price: 12.00
                    purchase: true
                    selling_price: 60.00)

      @red_black_gown = FactoryGirl.create(:item)

      @blue_shorts = FactoryGirl.create(:item,
                    name: "Blue Denim Shorts",
                    condition: @good,
                    size: @medium,
                    brand: "Forever 21",
                    gender: "female",
                    note: "Great for summer days!",
                    renting_price: 4.00
                    purchase: true
                    selling_price: 12.00)

      @red_blue_jeans = FactoryGirl.create(:item,
                    name: "Ripped Blue Jeans with Red Blotches",
                    condition: @good,
                    size: @large,
                    brand: "Levi's",
                    gender: "male",
                    note: "Great for looking straight-up terrifying. Only wear on Halloween.",
                    renting_price: 8.00
                    purchase: false
                    selling_price: 40.00)

      @black_blazer = FactoryGirl.create(:item,
                    name: "Formal Black Blazer",
                    condition: @like_new,
                    size: @small,
                    brand: "Macy's",
                    gender: "male",
                    note: "Fantastic fit. Be sure to take good care of it.",
                    renting_price: 20.00
                    purchase: false
                    selling_price: 120.00)

      @red_shirt = FactoryGirl.create(:item,
                    name: "Red Shirt",
                    condition: @poor,
                    size: @large,
                    brand: "H&M",
                    gender: "unisex",
                    note: "The most essential red shirt. Fits anyone.",
                    renting_price: 2.00
                    purchase: true
                    selling_price: 9.00)


    end
    
    def destroy_items
      @black_dress.delete
      @blue_shorts.delete
      @red_black_gown.delete
      @red_blue_jeans.delete
      @black_blazer.delete
      @red_shirt.delete
    end

  end
end




    t.string   "gender"
    t.string   "image"
    t.text     "note"
    t.float    "renting_price"
    t.boolean  "purchase"
    t.float    "selling_price"
    t.float    "avg_rating"
    t.boolean  "active"