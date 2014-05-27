class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.datetime :time
      t.integer :number
      t.text :posting

      t.timestamps
    end
  end
end
