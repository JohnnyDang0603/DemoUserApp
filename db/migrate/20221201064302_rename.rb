# frozen_string_literal: true

class Rename < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :productName, :Name
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
