class PostCategoriesController < ApplicationController
	def index
		@post_categories = PostCategory.all
	end

	def new
		@post_category = PostCategory.new
	end

	def create
		@post_category = PostCategory.new(postcategories_params)
		if @post_category.save
			redirect_to post_categories_path
		else 
			render :new
		end
	end

	private
	def postcategories_params
		params.require(:category).permit(:name, :type)
	end
end
