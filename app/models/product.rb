class Product < ActiveRecord::Base
  attr_accessible :brand_id, :category_id, :detail, :name, :price, :sub_category_id,:model,:product_id

  belongs_to :category
  belongs_to :sub_category
  belongs_to :brand
end
