class HomeController < ApplicationController
	def index

		if params[:search]
		@posts = pagination.where("post LIKE '%#{params[:search]}%' or url LIKE '%#{params[:search]}%' or title LIKE '%#{params[:search]}%' or category LIKE '%#{params[:search]}%' ")   
		else
		@posts = pagination   
		end

	end

	def pagination

		@pagination=Post.order("id DESC").paginate(:page => params[:page], :per_page => 1)

	end
end
