# frozen_string_literal: true

class ChangeDatatypeAge < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :age, :string, limit: 2
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
