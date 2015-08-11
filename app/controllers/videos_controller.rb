class VideosController < ApplicationController
  
  def index
    @videos = Video.order('created_at DESC')
  end
 
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      flash[:success] = 'Video added!'
      redirect_to root_url
    else
      render :new
    end
  end
 
  private
 
  def video_params
    params.require(:video).permit(:link)
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
