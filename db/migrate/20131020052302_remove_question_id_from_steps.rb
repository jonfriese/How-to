class RemoveQuestionIdFromSteps < ActiveRecord::Migration
  def up
    remove_column :steps, :question_id
  end

  def down
    add_column :steps, :question_id, :integer
  end
end
