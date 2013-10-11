class MicropostsController < ApplicationController

  def index
    @micropost = Micropost.all
  end

  def show
    #@user = User.find(params[:id])
    @current_post = Micropost.find(params[:id])
  end

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost = current_user.microposts.find_by_id(params[:id])
    @micropost.destroy
    redirect_to root_url
  end
end