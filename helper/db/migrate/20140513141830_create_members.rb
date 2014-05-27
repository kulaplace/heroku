class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :group_id
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
