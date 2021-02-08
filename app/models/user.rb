class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :last_name, :first_name, :last_name_kana, :first_name_kana, :address, :email,
            presence: true
  validates :telphone_number, :postal_code, numericality: { only_integer: true }
  
  has_many :reservations, dependent: :destroy
  has_many :lendings, dependent: :destroy
  enum gender: {
    男性: 0,
    女性: 1,
  }
end