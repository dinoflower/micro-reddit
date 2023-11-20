class User < ApplicationRecord
  validates :username, uniqueness: true, length: { in: 3..15 }

  validates :email, uniqueness: true, format: { with: /\A(.+)@(.+)\z/, message: "invalid"  }

  validates :password, length: { in: 7..20 }
end
