# frozen_string_literal: true

class RenameSexToGenderFromUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :sex, :gender
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
