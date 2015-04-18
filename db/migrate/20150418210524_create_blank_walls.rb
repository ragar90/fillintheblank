class CreateBlankWalls < ActiveRecord::Migration
  def change
    create_table :blank_walls do |t|
      t.references :owner, index: true
      t.integer :height
      t.integer :width
      t.integer :min_budget
      t.string :max_budget

      t.timestamps null: false
    end
    add_foreign_key :blank_walls, :owners
  end
end
