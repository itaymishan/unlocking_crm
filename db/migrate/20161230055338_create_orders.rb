class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :IMEI
      t.string :customer_email
      t.string :customer_name
      t.integer :status
      t.string :external_id

      t.timestamps null: false
    end
  end
end
