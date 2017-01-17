class CreateCampaignTable < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :creator_id
      t.integer :target_goal
      t.boolean :goal_met, default: false

      t.timestamps
    end
  end
end
