class HomesController < ApplicationController
  def index
    @users=User.where.not(id: current_user.id)
    friends=Friend.where(user_id: current_user)
    @friends_email=friends.pluck(:email)
  end
end
