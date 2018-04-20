class PhotosController < ApplicationController
before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photos_params.merge)
    redirect_to place_path(@place), notice: "Photo successfully uploaded"
  end

  private

  def photos_params
    params.require(:photo).permit(:caption, :user_id, :place_id)
  end

end
