class CommentsController < ApplicationController

  def create
    @comment = Comment.create(params['comment'])
    #send back partial
  end

end
