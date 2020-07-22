class CreatePostCategoryRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :post_category_relations do |t|

      t.timestamps
    end
  end
end
