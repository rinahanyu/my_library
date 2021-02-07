class Genre < ApplicationRecord
  has_many :books, dependent: :destroy
  validates :name, :is_active, presence: true
end
