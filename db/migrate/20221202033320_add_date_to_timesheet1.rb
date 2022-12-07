# frozen_string_literal: true

class AddDateToTimesheet1 < ActiveRecord::Migration[7.0]
  def change
    add_column :time_sheets, :datecheckin, :datetime
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
