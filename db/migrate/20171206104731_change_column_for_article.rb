class ChangeColumnForArticle < ActiveRecord::Migration
  def up
    rename_column :articles, :age, :year
  end
  def down
    rename_column :articles, :year, :age
  end
end
