class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end
  
  def new
    @community = Community.new
  end
  
  def create
    @community = Community.new(community_params)
    if @community.save
      redirect_to communities_path 
    else
      render 'new'
    end
  end

  def show
    @community = Community.find(params[:id])
  end

  private
    def community_params
      params[:community].permit(:name)
    end
end
