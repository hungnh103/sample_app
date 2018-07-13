class RelationshipsController < ApplicationController
  before_action :logged_in_user

  def create
    #@user = User.find(params[:followed_id])
    @user = User.find_by(id: params[:followed_id])
    current_user.follow(@user)

    respond_to do |format|
      format.html{redirect_to @user}
      format.js
    end
  end

  def destroy
    #@user = Relationship.find(params[:id]).followed
    @user = Relationship.find_by(id: params[:id]).followed
    current_user.unfollow(@user)

    respond_to do |format|
      format.html{redirect_to @user}
      format.js
    end
  end
  #deference in 2 method creaate and destroy:
  # create: create new 1 user
  #destroy: delete 1 user
end
