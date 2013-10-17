class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :list
      t.integer :parent_id

      t.timestamps
    end
  end
end
