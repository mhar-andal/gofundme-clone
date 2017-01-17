class CreateDonationsTable < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :campaign_id
      t.integer :donator_id
      t.integer :donation_amount
      t.timestamps
    end
  end
end
