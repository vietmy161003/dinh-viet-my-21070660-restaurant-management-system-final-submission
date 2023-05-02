class CreateCoupons < ActiveRecord::Migration[7.0]
  def change
    create_table :coupons do |t|
      t.string :subject
      t.string :description
      t.string :status
      t.string :type

      t.timestamps
    end
  end
end
