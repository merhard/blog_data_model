class UpdateCommentSchema < ActiveRecord::Migration
  def up
    change_column :comments, :first_name, :string, :null => false
    change_column :comments, :last_name, :string, :null => false
    change_column :comments, :comment, :string, :null => false
  end

  def down
    change_column :comments, :first_name, :string, :null => true
    change_column :comments, :last_name, :string, :null => true
    change_column :comments, :comment, :string, :null => true
  end
end
