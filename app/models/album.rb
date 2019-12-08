class Album < ApplicationRecord
  mount_uploader :picture, PictureUploader
  serialize :picture, JSON
  validates :title,
            presence: true

  validates :description,
            presence: false

  validates :picture,
            presence: false

end
