# frozen_string_literal: true

class ChangDatatypeAgeFromUsers < ActiveRecord::Migration[7.0]
  def down
    change_column :users, :age, :integer
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
