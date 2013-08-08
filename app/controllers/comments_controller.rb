class CommentsController < ApplicationController

  def new
    @profile = Profile.find(params['profile_id'])
    @comment = Comment.new
    render :_new, layout: false
  end

  def create
    @comment = Comment.create(feedback: params['comment']['feedback'],
                               profile_id: params['profile_id'])
    render :_show, layout: false
  end

end
