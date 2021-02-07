class Library < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :librarians, dependent: :destroy
  validates :name, :email, :telphone_number, :postal_code, :address, presence: true
end
