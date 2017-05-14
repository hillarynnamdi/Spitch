class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :url
      t.string :image
      t.string :title
      t.string :category
      t.text :post

      t.timestamps null: false
    end
  end
end
