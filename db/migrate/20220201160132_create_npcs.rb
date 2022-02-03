class CreateNpcs < ActiveRecord::Migration[7.0]
  def change
    create_table :npcs do |t|
      t.string :name
      t.text :description
      t.integer :armor_class
      t.integer :hit_points
      t.string :hit_dice
      t.integer :speed
      t.string :senses
      t.string :languages
      t.string :challenge

      t.timestamps
    end

    add_reference :npcs, :regions, foreign_key: true
    add_reference :npcs, :cities
  end
end