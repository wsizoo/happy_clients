class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end
  
  def edit
    @story = Story.find(params[:id])
  end
  
  def update
    @story = Story.find(params[:id])
    @story.update(story_params)
    redirect_to @story
  end

  def new
    @story = Story.new
  end
  
  def create
    @story = Story.new(story_params)
    @story.save
    redirect_to @story
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to story_url
  end

  def random
    @story = Story.order("RANDOM()").first
  end
  
private

  def story_params
    params[:story].permit(:company_name, :description, :rep_name, :vas_object, :case_link, :website, :quote)
  end
end

