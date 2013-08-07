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

  def get_one_to_rate
    @profile = Profile.all.sample
    @comments = @profile.comments
    render :_show, layout: false
  end

  def show
    # find profile by custom URL, such as 4C98TYI5SB3D
    @profile = Profile.find_by_url(params[:id])
    @comments = @profile.comments
    # send errors if not found
    @errors = "Not a valid URL. Please check again" if @profile.nil?
  end

end

