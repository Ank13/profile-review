class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
    render :_new, layout: false
  end

  def create
    puts "***************************"
    p params['profile']
    @profile = Profile.create(params['profile'])
    render :_thanks_for_posting, layout: false
  end

end

