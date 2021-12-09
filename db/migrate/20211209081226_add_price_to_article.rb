class AddPriceToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :price, :integer
  end
end
