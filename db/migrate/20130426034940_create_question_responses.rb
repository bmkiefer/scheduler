class CreateQuestionResponses < ActiveRecord::Migration
  def up
    create_table :question_responses do |t|
      t.references :question
      t.references :submission_response
      t.text :response

      t.timestamps
    end
  end

  def down
    drop_table :question_responses
  end
end
