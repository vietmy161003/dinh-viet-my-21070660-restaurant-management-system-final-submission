class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :address
      t.string :description
      t.datetime :date
      t.string :payment_type
      t.integer :total
      t.string :status
      t.integer :deleted

      t.timestamps
    end
  end
end
