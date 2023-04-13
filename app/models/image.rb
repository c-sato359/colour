class Image < ApplicationRecord
  belongs_to :genre
#	belongs_to :
  has_many :favori
  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
