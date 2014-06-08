class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :about
      t.text :video
      t.string :image
      t.text :order_link
      t.float :weight
      t.string :category

      t.timestamps
    end
  end
end
