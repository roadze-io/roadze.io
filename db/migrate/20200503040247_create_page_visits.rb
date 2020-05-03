class CreatePageVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :page_visits do |t|
      t.date :visit_date
      t.string :ip_address
      t.string :browser_used
      t.boolean :mobile_device

      t.timestamps
    end
  end
end
