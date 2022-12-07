# frozen_string_literal: true

class ChangeDatatypeAgeFromUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :age, :integer
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
