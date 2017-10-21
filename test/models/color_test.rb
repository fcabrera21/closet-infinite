require 'test_helper'

class ColorTest < ActiveSupport::TestCase
  should have_many(:item_colors)
  should have_many(:items)

  should validate_presence_of(:name)

  context "Within context" do
    setup do 
      create_colors
    end
    
    teardown do
      destroy_colors
    end

    should "show that there are four colors in alphabetical order" do
      assert_equal ["Black", "Blue", "Cranberry", "Red"], Color.alphabetical.all.map(&:name)
    end

    should "show that there are three active colors in order" do
      assert_equal ["Black", "Blue", "Red"], Color.alphabetical.active.map(&:name)
    end

    should "show that there is one inactive color" do
      assert_equal ["Cranberry"], Color.alphabetical.inactive.map(&:name)
    end

    # should "show that a color with an item associated with it cannot be destroyed" do
    # 	create_conditions
    # 	create_sizes
    # 	create_items
    # 	create_item_colors
    # 	@black.destroy
    # 	assert !@black.nil?
    # 	destroy_conditions
    # 	destroy_sizes
    # 	destroy_item_colors
    # 	destroy_items
    # end

    # should "show that a color with an item associated with it can be destroyed" do
    # 	create_conditions
    # 	create_sizes
    # 	create_items
    # 	create_item_colors
    # 	@cranberry.destroy
    # 	assert @cranberry.nil?
    # 	destroy_conditions
    # 	destroy_sizes
    # 	destroy_item_colors
    # 	destroy_items
    # end

    # should "make an improperly destroyed color inactive" do
    #   create_conditions
    # 	create_sizes
    # 	create_items
    # 	create_item_colors
    # 	@black.destroy
    # 	assert !@black.active
    # 	destroy_conditions
    # 	destroy_sizes
    # 	destroy_item_colors
    # 	destroy_items
    # end

  end
end
