class CreateCampaigns < ActiveRecord::Migration[7.0]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :description

      t.timestamps
    end

    add_reference :campaigns, :users
  end
end
