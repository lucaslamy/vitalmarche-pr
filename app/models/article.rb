class Article < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :title,
            presence: true

  validates :content,
            presence: true

  validates :picture,
            presence: false


end
