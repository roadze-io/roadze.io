class AddPublicProfileToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :add_to_public_directory, :boolean, default: false
  end
end
