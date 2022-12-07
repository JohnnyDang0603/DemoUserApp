# frozen_string_literal: true

class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :adress, :string
    add_column :users, :phone_number, :string
    add_column :users, :hello, :string
  end
end
