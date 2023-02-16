class User < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :payments, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
end
