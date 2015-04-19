class AddPhoneNumberToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :phone_number, :string
  end
end
