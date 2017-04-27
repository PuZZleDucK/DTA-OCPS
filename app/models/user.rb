class User < ApplicationRecord
  has_many :orders
  has_many :order_lines, through: :orders
  validates :name, presence: true, uniqueness: true

  has_secure_password
end
