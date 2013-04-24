class CreateSubmission < ActiveRecord::Migration
  def up
	create_table :submissions do |t|
	  t.references :level
	  t.references :mission
	end
  end

  def down
	drop_table :submissions
  end
end
