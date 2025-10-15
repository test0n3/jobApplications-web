class CreateJobApplications < ActiveRecord::Migration[8.0]
  def change
    create_table :job_applications do |t|
      t.date :application_date
      t.string :position
      t.string :company
      t.string :platform
      t.integer :state

      t.timestamps
    end
  end
end
