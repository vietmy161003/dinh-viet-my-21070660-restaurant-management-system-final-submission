class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.integer :poster_id
      t.string :subject
      t.string :description
      t.string :status
      t.string :type
      t.datetime :date
      t.integer :deleted

      t.timestamps
    end
  end
end
