class CreateOrders < ActiveRecord::Migration[7.2]

  belongs_to :customer
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items

  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.datetime :order_date
      t.decimal :total_price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
