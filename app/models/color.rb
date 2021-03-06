class Color < ActiveRecord::Base

	# Relationships
  has_many :item_colors
  has_many :items, through: :item_colors
  # has_many :order_items, through: :items

  # Validations
  validates_presence_of :name

  # Scopes
  scope :alphabetical, -> { order(:name) }
  scope :active,       -> { where(active: true) }
  scope :inactive,     -> { where(active: false) }

  # Callbacks
  before_destroy :is_destroyable?
  after_rollback :convert_to_inactive

  #Methods
  private
  def is_destroyable?
    @destroyable = self.item_colors.empty?
  end
  
  def convert_to_inactive
    make_inactive if !@destroyable.nil? && @destroyable == false
    @destroyable = nil
  end

  def make_inactive
    self.update_attribute(:active, false)
  end
end
