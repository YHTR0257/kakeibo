class AddTradeToMicroPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :microposts, :trade_to, :string
    add_column :microposts, :trade_from, :string
  end
end
