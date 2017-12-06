class AddColumnToArticle < ActiveRecord::Migration
  def up
    add_column :articles, :age, :integer
  end

  def down
    remove_column :articles, :age, :integer
  end
end
