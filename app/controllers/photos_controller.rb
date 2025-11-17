class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render template: "photos/index"
  end

  def show
    @photo = Photo.find(params[:id])
    render template: "photos/show"
  end

  def create
    @photo = Photo.create!(
      image_url: params[:image_url],
      description: params[:description],
      date_taken: params[:date_taken],
      title: params[:title]
    )

    render template: "photos/show"
  end

  def update

  end

  def destroy

  end

end
