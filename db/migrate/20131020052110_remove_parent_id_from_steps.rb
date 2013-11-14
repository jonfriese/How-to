class RemoveParentIdFromSteps < ActiveRecord::Migration
  def up
    remove_column :steps, :parent_id
  end

  def down
    add_column :steps, :parent_id, :integer
  end
end
