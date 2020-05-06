class AddRoadzeAccountTypeToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :roadze_account_type, :string
  end
end
