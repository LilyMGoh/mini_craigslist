class Posts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.string :title
      t.string :description 
      t.string :price
      t.string :email
    end
  end
end
 