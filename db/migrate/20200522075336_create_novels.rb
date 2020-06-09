class CreateNovels < ActiveRecord::Migration[6.0]
  def change
    create_table :novels do |t|
      t.string :title
      t.integer :genre
      t.text :summary

      t.timestamps
    end
  end
end
