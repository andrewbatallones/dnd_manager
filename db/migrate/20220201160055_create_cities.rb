class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    add_reference :cities, :regions, foreign_key: true
  end
end
