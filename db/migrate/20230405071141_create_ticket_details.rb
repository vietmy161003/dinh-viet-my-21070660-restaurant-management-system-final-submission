class CreateTicketDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :ticket_details do |t|
      t.integer :ticket_id
      t.integer :cus_id
      t.integer :description
      t.datetime :date

      t.timestamps
    end
  end
end
