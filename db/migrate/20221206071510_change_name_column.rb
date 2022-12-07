class ChangeNameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :timesheets, :datecheckin, :day
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    rename_column :timesheets, :users_id, :user_id
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
