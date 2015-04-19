class ChangesToArtists < ActiveRecord::Migration
  def up
  	change_table(:artists) do |t|
  		t.float :min_rate, default: 100
  		t.float :max_rate, default: 500
  		t.float :avg_review
  		t.boolean :phone_verified, default: false
  		t.boolean :profile_completed, default: false
		end
  end

  def down
  	change_table(:artists) do |t|
  		t.remove :min_rate
  		t.remove :max_rate
  		t.remove :avg_review
  		t.remove :phone_verified
  		t.remove :profile_completed
		end
  end
end
