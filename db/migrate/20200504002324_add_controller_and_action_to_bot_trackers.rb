class AddControllerAndActionToBotTrackers < ActiveRecord::Migration[6.0]
  def change
    add_column :bot_trackers, :controller, :string
    add_column :bot_trackers, :action, :string
  end
end
