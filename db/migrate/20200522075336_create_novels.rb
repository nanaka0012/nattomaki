class CreateNovels < ActiveRecord::Migration[6.0]
  def change
    create_table :novels do |t|
      t.string :title
      t.text :overall
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
