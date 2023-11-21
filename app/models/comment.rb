class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, length: { in: 3..10000 }
end
