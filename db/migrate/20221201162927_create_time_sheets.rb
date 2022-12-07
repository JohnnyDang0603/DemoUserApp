# frozen_string_literal: true

class CreateTimeSheets < ActiveRecord::Migration[7.0]
  def change
    create_table :time_sheets do |t|
      t.string :check_in
      t.string :check_out
      t.belongs_to :users, foreign_key: true

      t.timestamps
    end
  end
end
