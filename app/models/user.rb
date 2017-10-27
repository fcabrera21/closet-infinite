class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Relationships
  has_many :orders
  has_many :ratings 

  # Validations

  # Scopes
  scope :active,       -> { where(active: true) }
  scope :inactive,     -> { where(active: false) }
  scope :by_type,      -> { order(:type) }
  scope :by_username,  -> { order(:username) }
  scope :by_name,      -> { order(:first_name).order(:last_name) }
  scope :admins,    	 -> { where(type: 'admin') }
  scope :shoppers,     -> { where(type: 'shopper') }
  scope :contributors, -> { where(type: 'contributor') }

  TYPES = [['Administrator', :admin],['Shopper', :shopper],['Contributor', :contributor]]

  def role?(authorized_type)
    return false if type.nil?
    type.downcase.to_sym == authorized_type
  end
end
