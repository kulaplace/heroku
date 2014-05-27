class AddFoundedDateToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :founded_date, :date
  end
end
