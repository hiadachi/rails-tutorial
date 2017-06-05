class LikesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    #user = micropost.user
    micropost.like(current_user)
    # respond_to do |format|
    #   format.html { redirect_to @user }
    #   format.js
    # end
    redirect_to root_url
  end

  def destroy
    #micropost = Micropost.find(params[:micropost_id])
    #debugger
    micropost = Micropost.find(params[:micropost_id])

    micropost.unlike(current_user)
    redirect_to root_url
    # user = Relationship.find(params[:id]).followed
    # current_user.unfollow(user)
    # redirect_to user
    
  end

  private

end
