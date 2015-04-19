class AddLogoToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :logo, :string
    add_column :owners, :active, :boolean, default: true
    add_column :artists, :active, :boolean, default: true
  end
end
