class Tweet < ApplicationRecord



  # ツイートをユーザーに帰属させる
  belongs_to :user

  mount_uploader :img, ImgUploader
end
