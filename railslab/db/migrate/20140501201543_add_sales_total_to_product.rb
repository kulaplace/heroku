class AddSalesTotalToProduct < ActiveRecord::Migration
  def change
    add_column :products, :sales_tax, :decimal
    add_column :products, :total, :decimal
  end
end
