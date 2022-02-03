class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    add_reference :regions, :campaigns, foreign_key: true
  end
end
