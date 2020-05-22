class CreateNovels < ActiveRecord::Migration[6.0]
  def change
    create_table :novels do |t|
      t.integer :novel_id
      t.string :title
      t.datetime :created
      t.datetime :updated

      t.timestamps
    end
  end
end
