class CreateContributors < ActiveRecord::Migration[6.0]
  def change
    create_table :contributors do |t|
      t.integer :post_id
      t.integer :novel_id
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
