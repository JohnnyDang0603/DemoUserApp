# frozen_string_literal: true

class ChangeDatatypeFromTimesheet < ActiveRecord::Migration[7.0]
  def change
    change_column :timesheets, :check_in, :time
    change_column :timesheets, :check_out, :time
    change_column :timesheets, :datecheckin, :date
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
