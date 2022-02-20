class CreateCommentvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :commentvotes do |t|
      t.integer :account_id
      t.integer :comment_id
      t.boolean :like
    end
  end
end
