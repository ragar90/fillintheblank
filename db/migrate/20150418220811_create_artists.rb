class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :email
      t.string :twitter
      t.string :facebook
      t.string :nickname
      t.string :name
      t.string :state
      t.string :city
      t.string :portafolio_1
      t.string :portafolio_2
      t.string :portafolio_3

      t.timestamps null: false
    end
  end
end
