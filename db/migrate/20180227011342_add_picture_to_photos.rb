class AddPictureToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :picture, :string
    mount_uploader :picture, PictureUploader
  end
end
