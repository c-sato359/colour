class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 has_many :favorite
 has_many :follower_id, class_name: "customer", foreign_key: "follower_id", dependent: :destroy
 has_many :followed_id, class_name: "customer", foreign_key: "followed_id", dependent: :destroy
 has_many :image_id
         
           # foreign_key（FK）には、@user.xxxとした際に「@user.idがfollower_idなのかfollowed_idなのか」を指定します。
#  has_many :xxx, class_name: "モデル名", foreign_key: "○○_id", dependent: :destroy
  # @user.booksのように、@user.yyyで、
  # そのユーザがフォローしている人orフォローされている人の一覧を出したい
#  has_many :yyy, through: :xxx, source: :zzz


 
validates :name,  presence: true
validates :telephon_number, presence: true
end