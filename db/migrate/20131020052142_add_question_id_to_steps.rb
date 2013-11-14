class AddQuestionIdToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :question_id, :integer
  end
end
