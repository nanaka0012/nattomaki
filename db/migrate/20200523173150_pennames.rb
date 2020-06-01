class Pennames < ActiveRecord::Migration[6.0]
  def change
    create_table :pennames do |t|
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
