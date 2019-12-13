class Album < ApplicationRecord
  mount_uploaders :picture, PictureUploader
  serialize :picture, JSON
  validates :title,
            presence: true

  validates :description,
            presence: false

  validates :picture,
            presence: false

end
