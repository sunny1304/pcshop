class Category < ActiveRecord::Base

  # Friendly_id is disabled temporaily	
  # extend FriendlyId
  # friendly_id :name

  attr_accessible :name
  validates :name, :uniqueness => true

  has_many :products
  has_many :sub_categories

  scope :category_name ,lambda{|id| where("id= ?", id)}
end
