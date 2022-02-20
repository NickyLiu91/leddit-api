class CreatePostvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :postvotes do |t|
      t.integer :account_id
      t.integer :post_id
      t.boolean :like
    end
  end
end
