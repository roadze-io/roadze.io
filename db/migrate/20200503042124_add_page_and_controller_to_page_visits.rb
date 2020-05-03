class AddPageAndControllerToPageVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :page_visits, :page, :string
    add_column :page_visits, :controller, :string
    add_column :page_visits, :device_name, :string
    add_column :page_visits, :platform, :string
    add_column :page_visits, :internet_explorer, :boolean
    add_column :page_visits, :internet_explorer_version, :string
    add_column :page_visits, :browser_version, :string
  end
end
