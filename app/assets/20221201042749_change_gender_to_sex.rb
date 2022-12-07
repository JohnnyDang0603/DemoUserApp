# frozen_string_literal: true

class ChangeGenderToSex < ActiveRecord::Migration[7.0]
  def change
    rename_column(:users, :gender, :sex)
  end
end
