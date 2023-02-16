class User < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :transactions, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
end
