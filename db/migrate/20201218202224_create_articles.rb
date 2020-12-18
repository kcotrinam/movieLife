class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :author
      t.string :title
      t.text :content
      t.string :cover

      t.timestamps
    end
    add_foreign_key :articles, :users, column: :author_id
  end
end
