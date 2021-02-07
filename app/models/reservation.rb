class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_many :lendings, dependent: :destroy
  
  validates :book_id, :user_id, :lending_date, :return_date, presence: true
end
