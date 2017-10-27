class Status < ActiveRecord::Base

	# Relationships
  has_many :order_items

  # Validations
  validates_presence_of :name

  # Scopes
  scope :alphabetical, -> { order(:name) }
  scope :active,       -> { where(active: true) }
  scope :inactive,     -> { where(active: false) }

  # Callbacks
  before_destroy :is_destroyable?
  after_rollback :convert_to_inactive

  private
  def is_destroyable?
    @destroyable = self.order_items.empty?
  end
  
  def convert_to_inactive
    make_inactive if !@destroyable.nil? && @destroyable == false
    @destroyable = nil
  end
end
