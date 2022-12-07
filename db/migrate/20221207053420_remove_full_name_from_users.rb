class RemoveFullNameFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :fullname, :string
  end
end
