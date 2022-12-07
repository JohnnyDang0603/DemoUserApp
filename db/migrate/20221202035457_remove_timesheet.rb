# frozen_string_literal: true

class RemoveTimesheet < ActiveRecord::Migration[7.0]
  def change
    drop_table :time_sheets
  end
end
