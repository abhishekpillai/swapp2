class AddShortlinkToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :shortlink, :string

  end
end
