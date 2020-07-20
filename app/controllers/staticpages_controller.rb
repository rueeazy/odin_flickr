class StaticpagesController < ApplicationController
    require 'flickr'

    def index
        flickr = Flickr.new ENV["FLICKR_API_KEY"], ENV["FLICKR_SECRET"]
        id = params[:flickr_id]
        if id
            @photos = flickr.people.getPhotos(user_id: params[:flickr_id])
        end
    end

end
