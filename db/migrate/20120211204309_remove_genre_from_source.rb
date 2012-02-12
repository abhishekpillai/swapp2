class RemoveGenreFromSource < ActiveRecord::Migration
  def up
    remove_column :sources, :genre
      end

  def down
    add_column :sources, :genre, :string
  end
end
