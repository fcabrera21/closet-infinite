class Item < ActiveRecord::Base
  
	# Relationships
  belongs_to :size
  belongs_to :condition
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :item_colors
  has_many :colors, through: :color_items

  # Scopes
  scope :alphabetical, -> { order(:name) }
  scope :active,       -> { where(active: true) }
  scope :inactive,     -> { where(active: false) }
  # scope :for_color, ->(color_id) { joins(:item_color).where(item_colors.color: color_id) }
  # scope :for_condition, ->(condition_id) { joins(:condition).where(condition: condition_id) }
  # scope :for_size, ->(size_id) { joins(:size).where(size: size_id) }
  # scope :available, -> { joins(:order_items).where('order_items.returned = ?', false) }

  # Validations
  validates_presence_of :name, :renting_price, :selling_price
  validates_numericality_of :renting_price, :selling_price, greater_than_or_equal_to: 0
  validates_numericality_of :avg_rating, greater_than_or_equal_to: 0, less_than_or_equal_to: 5

  # Callbacks
  before_destroy :is_destroyable?
  after_destroy :remove_unshipped_and_unpaid_order_items
  after_rollback :convert_to_inactive

  # Methods
  private
  def is_destroyable?
    @destroyable = self.order_items.empty?
  end
  
  def convert_to_inactive
    if !@destroyable.nil? && @destroyable == false
      make_inactive
    end
    @destroyable = nil
  end

  def make_inactive
    self.update_attribute(:active, false)
  end

end
