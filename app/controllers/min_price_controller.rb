class MinPriceController < ApplicationController
	def index
		@search_term = params[:looking_for] || 'xbox'
		@sites = MinPrice.search_all(@search_term)

		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @sites }
		end
	end
end
