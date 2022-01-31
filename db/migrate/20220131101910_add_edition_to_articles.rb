class AddEditionToArticles < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :edition, null: false, foreign_key: true
  end
end
