class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :account_id
      t.boolean :deleted
      t.boolean :edited

      t.timestamps
    end
  end
end
