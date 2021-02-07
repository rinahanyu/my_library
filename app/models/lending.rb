class Lending < ApplicationRecord
  belongs_to :book
  belongs_to :user
  belongs_to :reservation
  
  validates :book_id, :user_id, :reservation_id, :lent_on, :return_date, :returned_on, presence: true
end
