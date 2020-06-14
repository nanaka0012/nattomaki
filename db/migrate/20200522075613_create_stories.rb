class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :subtitle, null: false
      t.references :novel, foreign_key: true
      t.string :penname, null: false
      t.text :content, null: false
      t.text :comment
      t.references :user, foreign_key: true
      t.references :parent, foreign_key: { to_table: :stories }

      t.timestamps
    end
  end
end
