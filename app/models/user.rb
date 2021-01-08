class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,  :validatable
  validates :name, presence: true
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
end
