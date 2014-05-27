class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :genre
      t.integer :network_id

      t.timestamps
    end
  end
end
