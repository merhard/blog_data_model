class UpdateCategorySchema < ActiveRecord::Migration
  def up
    change_column :categories, :name, :string, :null => false
  end

  def down
    change_column :categories, :name, :string, :null => true
  end
end
