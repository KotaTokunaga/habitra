class User < ApplicationRecord
  # 登録の重複が無いかチェック
  validates :username, {presence: true}
  validates :email, {presence: true, uniqueness: true}

  mount_uploader :image, ImageUploader
  mount_uploader :avatar, AvatarUploader
# １つのユーザーがツイートを複数持つことができる
  has_many :tweets
  has_many :countries
  has_many :length_of_stays



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

   def self.find_for_oauth(auth)
   user = User.where(uid: auth.uid, provider: auth.provider).first

   unless user
     user = User.create(
       uid:      auth.uid,
       provider: auth.provider,
       email:    auth.info.email,
       password: Devise.friendly_token[0, 20]
     )
   end


  end

  # attr_accessor :avatar, :avatar_cache, :remove_avatar


end
