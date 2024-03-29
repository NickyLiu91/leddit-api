class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :account_id
      t.integer :post_id
      t.boolean :deleted
      t.boolean :edited
      t.references :parent, index: true

      t.timestamps
    end
  end
end
