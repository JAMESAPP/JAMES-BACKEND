class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.datetime :date
      t.time :leaving_early
      t.boolean :official_shift
      t.time :checkin
      t.string :checkin_machine
      t.string :checkin_motive
      t.time :checkout
      t.string :checkout_machine
      t.string :checkout_motive

      t.timestamps
    end
  end
end
