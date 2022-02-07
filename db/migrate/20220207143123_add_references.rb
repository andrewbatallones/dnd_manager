class AddReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :campaigns, :users, foreign_key: true, null: false
    add_reference :regions, :campaigns, foreign_key: true, null: false
    add_reference :cities, :regions, foreign_key: true, null: false
    add_reference :npcs, :regions, foreign_key: true, null: false
    add_reference :npcs, :cities
  end
end
