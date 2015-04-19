class ChangesToBlankWalls < ActiveRecord::Migration
  def up
  	change_table(:blank_walls) do |t|
		  t.remove :height
		  t.remove :width
      t.integer :area
      t.date :done_by
      t.text :description
      t.string :picture_1
      t.string :picture_2
      t.string :picture_3
		end
  end

  def down
  	change_table(:blank_walls) do |t|
		  t.integer :height
		  t.integer :width
      t.remove :area
      t.remove :done_by
      t.remove :description
      t.remove :picture_1
      t.remove :picture_2
      t.remove :picture_3
		end
  end
end
