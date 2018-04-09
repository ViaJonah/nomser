class Photo < ApplicationRecord
 belongs_to :user
 belongs_to :place
 has_many :photos
 has_many :caption

mount_uploader :photos, PictureUploader

end