class AddYearToSubscription < ActiveRecord::Migration[5.0]
  def change
  	add_column :subscriptions, :year, :integer
  end
end
