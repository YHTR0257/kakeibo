class AddTradeToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :trade_to, :string
    add_column :posts, :trade_from, :string
  end
end
