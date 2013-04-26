class CreateSubmissionResponses < ActiveRecord::Migration
  def up
    create_table :submission_responses do |t|
      t.references :submission
      t.references :user
      t.integer :rate

      t.timestamps
    end
  end

  def down
    drop_table :submission_responses
  end
end
