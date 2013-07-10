class Brand < ActiveRecord::Base
  attr_accessible :name
  validates :name, :uniqueness => true

  has_many :products

  scope :brand_name, lambda{|id| where("id= ?",id)}
end
