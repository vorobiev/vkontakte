class CreateVkontakteAds < ActiveRecord::Migration
  def change
    create_table :vkontakte_ads do |t|
      t.integer :ad_id
      t.integer :campaign_id
      t.references :vkontakte_campaign
      t.string :name
      t.integer :status
      t.integer :approved
      t.decimal :all_limit, :precision => 10, :scale => 2
      t.integer :cpc
      t.integer :cpm
      t.boolean :disclaimer

      t.timestamps
    end
    add_index :vkontakte_ads, :vkontakte_campaign_id
  end
end
