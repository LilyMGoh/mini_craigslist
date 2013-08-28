class Posts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description 
      t.string :price
      t.string :email
    end

    create_table :categories_posts do |t|
      t.belongs_to :category
      t.belongs_to :post
    end
  end
end
