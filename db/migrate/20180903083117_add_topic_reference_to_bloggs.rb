class AddTopicReferenceToBloggs < ActiveRecord::Migration[5.2]
  def change
    add_reference :bloggs, :topic, foreign_key: true
  end
end
