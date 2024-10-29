class CreateJobApplications < ActiveRecord::Migration[7.2]
  def change
    create_table :job_applications do |t|
      t.date :application_date
      t.string :application_position
      t.string :application_company
      t.string :application_platform
      t.integer :application_state

      t.timestamps
    end
  end
end
