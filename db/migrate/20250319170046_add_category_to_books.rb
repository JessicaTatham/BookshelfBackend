class AddCategoryToBooks < ActiveRecord::Migration[8.0]
  def up
    add_column :books, :category, :string
    change_column_default :books, :category, "fiction"
    Book.update(category: "fiction")
  end

  def def down 
    remove_column :books, :category
  end
end
