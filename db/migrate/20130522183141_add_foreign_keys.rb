class AddForeignKeys < ActiveRecord::Migration
  def up
    add_column :posts, :author_id, :integer
    add_column :comments, :post_id, :integer
  end

  def down
    remove_column :posts, :author_id
    remove_column :comments, :post_id
  end
end
