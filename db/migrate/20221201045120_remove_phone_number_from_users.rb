# frozen_string_literal: true

class RemovePhoneNumberFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :phone_number
  end
end
