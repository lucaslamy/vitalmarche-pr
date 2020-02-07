class Album < ApplicationRecord
  mount_uploaders :picture, PictureUploader
  serialize :picture, JSON
  validates :title,
            presence: true

  validates :picture,
            presence: false

  validates :private,
            presence: false
end
