class AddContactToMain < ActiveRecord::Migration
  def change
    add_column :mains, :contact, :string
  end
end
