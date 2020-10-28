class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # presence: true, は空データを登録できなようにしている
  validates :name, presence: true
  # uniqueness: true, は同じデータを登録できないようにしている
  validates :email, uniqueness: true, presence: true
  
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages

end
