class Event < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :title,
            presence: true

  validates :content,
            presence: true

  validates :start_date,
            presence: true

  validates :end_date,
            presence: true

  validates :picture,
            presence: false
  def start_time
    self.date
  end
end