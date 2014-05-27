class AddInterviewedByToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :interviewed_by, :string
  end
end
