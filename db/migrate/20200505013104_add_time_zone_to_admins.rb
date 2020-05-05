class AddTimeZoneToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :time_zone, :string, default: 'Mountain Time (US & Canada)'
  end
end
