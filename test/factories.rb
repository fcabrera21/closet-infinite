FactoryGirl.define do

  factory :condition do
    name "Very Good"
    active true
  end

  factory :size do
    name "Small"
    active true
  end

  factory :color do
    name "Red"
    image nil
    active true
  end

  factory :item do
    name "Evening Gown"
    association :size
    association :condition
    brand "Forever 21"
    image nil
    note "Classy but simple gown for all formal occaisions"
    gender: "female"
    renting_price 5.00
    purchase false
    selling_price 25.00
    avg_rating 5.00
    active true
  end

  factory :item_color do
    association :item
    association :color
  end
  
  
end