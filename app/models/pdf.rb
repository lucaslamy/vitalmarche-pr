class Pdf < ApplicationRecord
  mount_uploader :file, PdfUploader
  validates :title,
            presence: true
  validates :latest,
            presence: true
end