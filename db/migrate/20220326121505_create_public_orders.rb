class CreatePublicOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :public_orders do |t|
      t.references :customer, foreign_key: true
      t.integer :postal_code, null: false
      t.string :address, null: false
      t.string :name, null: false
      t.integer :shipping_cost, null: false
      t.integer :payment_method, null: false
      t.integer :status, null: false
      

      t.timestamps
    end
  end
end
