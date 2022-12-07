# frozen_string_literal: true

class ChangeDatatypeCheckinCheckoutFromTimesheet < ActiveRecord::Migration[7.0]
  def change
    change_column :time_sheets, :check_in, :time
    change_column :time_sheets, :check_out, :time
  end
end
