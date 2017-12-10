class AddJobRoleToVote < ActiveRecord::Migration[5.1]
  def change
    add_reference :votes, :job_role, foreign_key: true
  end
end
