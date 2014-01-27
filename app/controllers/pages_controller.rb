class PagesController < ApplicationController

	def index
		@links = Link.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
	end

end
