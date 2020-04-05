class ItemsController < ApplicationController
    def create 
        image = Cloudinary::Uploader.upload(params[:image])
        video = Cloudinary::Uploader.upload(params[:video], :resource_type => :video)
        item = Item.create(image: image["url"], video: video["url"])
        render json: item
    end
end
