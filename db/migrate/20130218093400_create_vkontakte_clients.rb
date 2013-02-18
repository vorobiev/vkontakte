class CreateVkontakteClients < ActiveRecord::Migration
  def change
    create_table :vkontakte_clients do |t|
      t.integer :client_id
      t.integer :account_id
      t.string :name
      t.integer :day_limit
      t.integer :all_limit

      t.timestamps
    end
  end
end
