class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :industry
      t.string :function
      t.integer :number_of_jobs

      t.timestamps
    end
  end
end
