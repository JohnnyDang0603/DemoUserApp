class RenameColumnAddressFromUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :adress, :address
    rename_column :users, :date, :birthday
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
