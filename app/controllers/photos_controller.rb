class PhotosController < ApplicationController
	include PhotosHelper
  def index
  	@photos = Photo.all
  end

  def edit
  end

  def new
  	@photo = Photo.new
  end

  def show
  end

  	def create
		@photo = Photo.new(photo_params)

		if @photo.save
			if send_bot_photo(@photo.chat_id, @photo.photo, @photo.caption)
				#render action: 'index', notice: "Successfull send a message"
				redirect_to new_photo_path, notice: "Successfull send a message"
			else
				redirect_to new_photo_path, alert: "Error when sending a message"
			end
		else
			redirect_to new_photo_path, notice: "Could not create Message Object"
		end
	end

	def destroy
	    @photo = Photo.find(params[:id])
	    @photo.destroy
	    redirect_to(photos_url)
	end

	private

	def photo_params
		params.require(:photo).permit(:chat_id, :photo, :caption)
	end

end
