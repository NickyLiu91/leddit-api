class Comment < ApplicationRecord
  belongs_to :account
  belongs_to :post
  belongs_to :parent, :class_name => 'Comment', optional: true
  has_many :children, :class_name => 'Comment', :foreign_key => 'parent_id'
end
