class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  # presence: true, は空データを登録できなようにしている
  validates :email, uniqueness: true, presence: true
  # uniqueness: true, は同じデータを登録できないようにしている
  
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages

end
