class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.text :uuid
      t.string :name
      t.float :amount
      t.date :payment_date
      t.integer :month
      t.timestamps
    end
  end
end
