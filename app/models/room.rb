class Room < ApplicationRecord
  has_many :room_users
  has_many :messages
  has_many :users, through: users
end
