class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.references :story, foreign_key: true
      t.references :novel, foreign_key: true

      t.timestamps
    end
  end
end
