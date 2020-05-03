class AddLatAndLonToPageVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :page_visits, :lat, :float
    add_column :page_visits, :lon, :float
  end
end
