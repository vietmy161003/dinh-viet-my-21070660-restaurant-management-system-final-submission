class CreateEWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :e_wallets do |t|
      t.string :customer
      t.string :customer_name
      t.integer :balance

      t.timestamps
    end
  end
end
