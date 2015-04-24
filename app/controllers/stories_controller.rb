class StoriesController < ApplicationController
 before_filter :authorize
 
  def index
      if current_user.id == params[:user_id].to_i
        @stories = Story.where(user_id: params[:user_id])
      else
        redirect_to ('/')
      end

  end

  def show

      @story = Story.find(params[:id])
      
  end

  def new
    @story = Story.new
    
  end

  def create
      @story = Story.new(story_params)
      @story.user=current_user
      if @story.save
        redirect_to user_stories_path(current_user)
      else
        render "new"
      end
  end

  def edit
      @story = Story.find(params[:id])
  end

  def update
      @story = Story.find(params[:id])
      if @story.update_attributes(story_params)
        redirect_to user_stories_path(current_user)
      else
        render "edit"
      end
  end

  def destroy
      @story = Story.find(params[:id])
      @story.destroy
      redirect_to user_stories_path(current_user)
  end



  private
    def story_params
      params.require(:story).permit(:text, :category)
    end
end

