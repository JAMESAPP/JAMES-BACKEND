class CreateRefuels < ActiveRecord::Migration
  def change
    create_table :refuels do |t|
      t.datetime :date
      t.float :KM
      t.float :amount
      t.float :price
      t.string :gas_station
      t.string :observation

      t.timestamps
    end
  end
end
