class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
  end

  def edit
  end

  def show
    @topic = Topic.find(:id)
  end
end
