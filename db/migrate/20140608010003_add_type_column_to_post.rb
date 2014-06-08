class AddTypeColumnToPost < ActiveRecord::Migration
  def change
    add_column :posts, :type, :string
    remove_column :posts, :category
  end
end
