class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :body, length: { in: 10..40000 }
end
