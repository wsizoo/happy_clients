class StoriesController < ApplicationController
  caches_action :random

  def index
    @stories = Story.find( :all, :from_this_month, :order => "created_at DESC")
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
    redirect_to @story
  end

  def random
    @story = Story.order("RANDOM()").first
  end

  def archive
  @stories = Story.find(:all).group_by { |story| story.created_at.strftime("%B") }
  end

private

  def story_params
    params[:story].permit(:company_name, :description, :rep_name, :vas_object, :case_link, :website, :quote)
  end
end

