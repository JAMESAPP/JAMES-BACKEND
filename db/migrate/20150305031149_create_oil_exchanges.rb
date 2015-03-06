class CreateOilExchanges < ActiveRecord::Migration
  def change
    create_table :oil_exchanges do |t|
      t.datetime :date
      t.float :KM
      t.float :amount
      t.float :price
      t.string :observation

      t.timestamps
    end
  end
end
