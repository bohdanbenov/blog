class AddPostStatusToBloggs < ActiveRecord::Migration[5.2]
  def change
    add_column :bloggs, :status, :integer, default: 0
  end
end
