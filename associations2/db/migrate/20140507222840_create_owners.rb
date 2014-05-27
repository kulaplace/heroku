class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :pet

      t.timestamps
    end
  end
end
