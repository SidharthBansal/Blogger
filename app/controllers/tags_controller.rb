class TagsController < ApplicationController
	def show
	  @tag = Tag.find(params[:id])
	end
	def index
		@tags = Tag.all
	end 
	def destroy
  		Tag.find(params[:id]).destroy
  		redirect_to tags_path
      flash.notice = "Tag deleted successfully"
  end
end
