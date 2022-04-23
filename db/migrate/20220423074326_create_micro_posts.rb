class CreateMicroPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :micro_posts do |t|
      t.string :name
      t.integer :price
      t.datetime :date
      t.text :memo

      t.timestamps
    end
  end
end
