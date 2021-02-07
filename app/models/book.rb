class Book < ApplicationRecord
  belongs_to :library
  belongs_to :genre
  has_many :reservations, dependent: :destroy
  has_many :lendings, dependent: :destroy

  validates :library_id, :genre_id, :title, :title_kana, :author, :publisher, :published_on,
            :status, presence: true

  enum status: {
    貸出可: 0,
    貸出中: 1,
    予約あり: 2,
  }
end
