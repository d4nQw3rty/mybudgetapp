class Group < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :payments, dependent: :destroy, class_name: 'Payment', foreign_key: 'group_id'
  validates :name, presence: true
  validates :user_id, presence: true
end
