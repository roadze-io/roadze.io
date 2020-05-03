class CreateBotTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :bot_trackers do |t|
      t.string :bot_name
      t.boolean :search_engine
      t.string :matcher
      t.string :ip_address

      t.timestamps
    end
  end
end
