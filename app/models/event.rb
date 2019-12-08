class Event < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :title,
            presence: true

  validates :content,
            presence: true

  validates :pop_up,
            presence: true

  validates :date,
            presence: true

  validates :position,
            presence: true

  validates :picture,
            presence: false

end