class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
    render :_new, layout: false
  end

  def create
    @profile = Profile.create(params['profile'])
    render :_thanks_for_posting, layout: false
  end

  def show
    # 4C98TYI5SB3D
    # find profile by custom URL
    @profile = Profile.find_by_url(params[:id])
    # redirect_to :index if @profile.nil?
  end

end

