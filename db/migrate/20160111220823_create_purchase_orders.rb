class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.date :start_date
      t.date :end_date
      t.float :cost

      t.timestamps null: false
    end
  end
end
