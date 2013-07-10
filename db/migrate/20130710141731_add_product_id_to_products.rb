class AddProductIdToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :product_id, :string
  	add_column :products, :model,      :string
  end
end
