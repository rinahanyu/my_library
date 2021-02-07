class Recommend < ApplicationRecord
  belongs_to :book

  validates :book_id, :recommend_result, presence: true

  enum recommend_result: {
    おすすめしない: 0,
    あまりおすすめしない: 1,
    普通: 2,
    おすすめする: 3,
    かなりおすすめする: 4,
  }
end
