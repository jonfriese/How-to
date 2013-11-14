class AddTutorialIdToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :tutorial_id, :integer
  end
end
