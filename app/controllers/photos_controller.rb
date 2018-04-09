class PhotosController < ApplicationController
before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photos_params)
    redirect_to place_path(@place), notice: "Photo successfully uploaded"
  end

  private

  def photos_params
    params.require(:photos).permit(:caption)
  end

end
