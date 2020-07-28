class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name,null: false
      t.string :image,null: false
      t.timestamps
      t.integer "category_id"
    end
  end
end
