
class CreateTimesheets < ActiveRecord::Migration[7.0]
  def change
    create_table :timesheets do |t|
      t.time :check_in
      t.time :check_out
      t.datetime :day
      t.belongs_to :user

      t.timestamps
    end
  end
end
