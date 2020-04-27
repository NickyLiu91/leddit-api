class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :content
      t.integer :account_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
