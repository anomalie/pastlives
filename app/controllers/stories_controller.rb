class StoriesController < ApplicationController
 before_filter :authorize
 
  def index
      @stories = Story.all
  end

  def show
    
    if
      session[:user_id] = user.id
      @story = Story.find(params[:id])
    else
      @story = nil
      
    end

  end

  def new
    @story = Story.new
    
  end

  def create
    @story = Story.new(story_params)

    if @story.save
      redirect_to stories_path
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
      redirect_to stories_path
    else
      render "edit"
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_path
  end

  private
    def story_params
      params.require(:story).permit(:text, :category)
    end
end

