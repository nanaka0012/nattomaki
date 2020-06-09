class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :subtitle
      t.references :novel, foreign_key: true
      t.string :penname
      t.text :content
      t.text :comment
      t.references :user, foreign_key: true
      t.references :parent_story, foreign_key: { to_table: :stories }

      t.timestamps
    end
  end
end
