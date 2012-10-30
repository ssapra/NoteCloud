class UsersController < ApplicationController

  def show
    @user = current_user
    @heading = Heading.new(:user_id => @user.id)
    @headings = @user.headings
  end

end