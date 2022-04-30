class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :price
      t.datetime :date
      t.text :memo

      t.timestamps
    end
  end
end
