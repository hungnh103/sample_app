class RelationshipsController < ApplicationController
  before_action :logged_in_user

  def create
    @user = User.find_by params[:followed_id]
    current_user.follow @user
    respond_to do |format|
      format.html{redirect_to @user}
      format.js
    end
  end

  def destroy
    @user = Relationship.find_by params[:id].followed
    current_user.unfollow @user
    respond_to do |format|
      format.html{redirect_to @user}
      format.js
    end
  end
end

# khác biệt giữa "find" và "find_by": "find_by" khi không tìm thấy kết quả sẽ
# trả về nil còn "find" thì không và server sẽ báo lỗi.
