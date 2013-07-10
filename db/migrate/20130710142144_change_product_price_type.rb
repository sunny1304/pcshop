class ChangeProductPriceType < ActiveRecord::Migration
  def up
  	remove_column :products, :price
  	add_column    :products, :price, :float
  end

  def down
  	remove_column :products, :price
  	add_column    :products, :price, :string
  end
end
