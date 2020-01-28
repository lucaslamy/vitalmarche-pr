class Slideshow < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :title,
            presence: true

  validates :picture,
            presence: false

end

