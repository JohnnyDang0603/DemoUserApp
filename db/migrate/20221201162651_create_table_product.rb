class CreateTableProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :table_products do |t|

      t.timestamps
    end
  end
end
