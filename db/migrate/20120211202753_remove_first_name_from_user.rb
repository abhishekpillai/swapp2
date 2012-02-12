class RemoveFirstNameFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :first_name
      end

  def down
    add_column :users, :first_name, :string
  end
end
