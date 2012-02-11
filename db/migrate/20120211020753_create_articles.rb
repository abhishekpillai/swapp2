class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :url
      t.string :title
      t.string :state
      t.time :time_added
      t.time :time_changed
      t.integer :source_id
      t.integer :user_id

      t.timestamps
    end
  end
end
