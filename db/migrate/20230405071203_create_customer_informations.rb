class CreateCustomerInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_informations do |t|
      t.string :role
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.string :address
      t.integer :contact
      t.integer :verified
      t.integer :deleted

      t.timestamps
    end
  end
end
