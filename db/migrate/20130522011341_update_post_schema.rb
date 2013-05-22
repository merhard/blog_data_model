class UpdatePostSchema < ActiveRecord::Migration
  def up
    change_column :posts, :title, :string, :null => false
    change_column :posts, :content, :string, :null => false
  end

  def down
    change_column :posts, :title, :string, :null => true
    change_column :posts, :content, :string, :null => true
  end
end
