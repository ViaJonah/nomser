class Photo < ApplicationRecord

mount_uploader :picture, PictureUploader

  belongs_to :user
  has_many :photos
  has_many :caption
end
