class SubCategory < ActiveRecord::Base
  attr_accessible :category_id, :name
  validates :name, :uniqueness => true
  has_many :products
  belongs_to :category

  scope :sub_category_name, lambda{|id| where("id= ?", id)}
end
