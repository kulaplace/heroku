class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :date_posted
      t.datetime :date_applied
      t.boolean :interview

      t.timestamps
    end
  end
end
