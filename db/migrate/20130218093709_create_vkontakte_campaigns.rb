class CreateVkontakteCampaigns < ActiveRecord::Migration
  def change
    create_table :vkontakte_campaigns do |t|
      t.string :name
      t.integer :account_id
      t.integer :client_id
      t.integer :campaign_id
      t.references :vkontakte_client
      t.integer :status
      t.decimal :day_limit, :precision => 10, :scale => 2
      t.decimal :all_limit, :precision => 10, :scale => 2
      t.datetime :start_time
      t.datetime :stop_time

      t.timestamps
    end
    add_index :vkontakte_campaigns, :vkontakte_client_id
  end
end