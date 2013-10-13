class StaticPagesController < ApplicationController
  def home
  	@feed_items = Micropost.all
  	if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def resources
  end
end
