class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.integer :owner_id
      t.string :company_name
      t.date :trial_ends
      t.date :trial_end_warning
      t.json :settings
      t.json :modules
      t.boolean :is_active
      t.boolean :is_verified

      t.timestamps
    end
  end
end
