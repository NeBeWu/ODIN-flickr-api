class StaticPagesController < ApplicationController
  def index
    FlickRaw.api_key = ENV['FLICKRAW_API_KEY']
    FlickRaw.shared_secret = ENV['FLICKRAW_SHARED_SECRET']

    user_id = params[:user_id]

    @list = flickr.photos.search user_id: user_id unless user_id.nil?
  end
end
