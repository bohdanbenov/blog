class AddSlugToBloggs < ActiveRecord::Migration[5.2]
  def change
    add_column :bloggs, :slug, :string
    add_index :bloggs, :slug, unique: true
  end
end
