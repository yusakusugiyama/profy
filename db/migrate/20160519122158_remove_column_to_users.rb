class RemoveColumnToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :family_name, :string
  end
end
