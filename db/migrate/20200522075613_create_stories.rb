class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.integer :post_id
      t.integer :novel_id
      t.string :subtitle
      t.text :content
      t.datetime :created
      t.datetime :updated
      t.integer :parent

      t.timestamps
    end
  end
end
