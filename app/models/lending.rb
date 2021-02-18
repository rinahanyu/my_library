class Lending < ApplicationRecord
  belongs_to :book
  belongs_to :user
  belongs_to :reservation, optional: true

  validates :book_id, :user_id, :lent_on, :return_date, presence: true
end
