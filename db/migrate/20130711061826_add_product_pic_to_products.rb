class AddProductPicToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_pic, :string
  end
end
