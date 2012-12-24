class StaticPagesController < ApplicationController
  def home
  	 if signed_in?
        @micropost  = current_user.microposts.build
        @feed_items = current_user.feed.paginate(page: params[:page])
       #@micropost = current_user.microposts.build if signed_in?
     end
  end

  def help
  end
end
