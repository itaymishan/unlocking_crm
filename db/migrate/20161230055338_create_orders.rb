class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :imei, null: false
      t.string :customer_email
      t.string :customer_name
      t.integer :status, default: 'pending', null: false
      t.string :external_id
      t.jsonb :raw_result
      t.jsonb :code

      t.timestamps null: false
    end
  end
end
