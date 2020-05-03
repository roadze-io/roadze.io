class CreateCookieAcceptances < ActiveRecord::Migration[6.0]
  def change
    create_table :cookie_acceptances do |t|
      t.string :name
      t.string :accept_token
      t.string :ip_address
      t.boolean :accepted

      t.timestamps
    end
  end
end
