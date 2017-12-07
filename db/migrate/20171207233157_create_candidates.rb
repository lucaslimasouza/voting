class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.references :job_role, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
