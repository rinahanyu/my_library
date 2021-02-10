class Librarian < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :library, optional: true
  validates :library_id, :name, presence: true
  
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
