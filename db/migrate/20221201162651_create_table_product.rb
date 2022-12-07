# frozen_string_literal: true

class CreateTableProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :table_products, &:timestamps
  end
end
