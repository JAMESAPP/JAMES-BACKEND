class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.datetime :date
      t.float :amount
      t.string :accountFrom
      t.string :accountTo
      t.string :memo

      t.timestamps
    end
  end
end
