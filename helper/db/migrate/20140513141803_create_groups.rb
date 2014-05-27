class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :num_members
      t.string :name

      t.timestamps
    end
  end
end
