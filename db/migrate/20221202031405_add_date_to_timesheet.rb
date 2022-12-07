# frozen_string_literal: true

class AddDateToTimesheet < ActiveRecord::Migration[7.0]
  def change
    add_column :time_sheets, :date, :datetime, :column_options
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
