class CreateJobRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :job_roles do |t|
      t.references :meeting, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
