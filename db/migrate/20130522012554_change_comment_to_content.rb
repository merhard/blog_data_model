class ChangeCommentToContent < ActiveRecord::Migration
  def up
    remove_column :comments, :comment
    add_column :comments, :content, :string, :null => false
  end

  def down
    add_column :comments, :comment, :string, :null => false
    remove_column :comments, :content
  end
end
