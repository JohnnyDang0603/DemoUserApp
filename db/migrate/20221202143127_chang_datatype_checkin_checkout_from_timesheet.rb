# frozen_string_literal: true

class ChangDatatypeCheckinCheckoutFromTimesheet < ActiveRecord::Migration[7.0]
  def change
    change_column :timesheets, :check_in, :datetime
    change_column :timesheets, :check_out, :datetime
  end
end
