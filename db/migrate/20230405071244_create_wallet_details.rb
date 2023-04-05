class CreateWalletDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :wallet_details do |t|
      t.integer :wallet_id
      t.string :number
      t.integer :balance

      t.timestamps
    end
  end
end
