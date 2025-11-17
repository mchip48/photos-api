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
    @photo = Photo.find(params[:id])
    @photo.update(
      image_url: params[:image_url] || @photo.image_url,
      description: params[:description] || @photo.description,
      date_taken: params[:date_taken] || @photo.date_taken,
      title: params[:title] || @photo.title
    )

    render template: "photos/show"
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    render json: { message: "Photo was deleted!"}
  end

end
