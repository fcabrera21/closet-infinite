class OrderItem < ActiveRecord::Base
  
  # Relationships
  belongs_to :order
  belongs_to :item
  belongs_to :status

  # Validations

  # Scopes

end
