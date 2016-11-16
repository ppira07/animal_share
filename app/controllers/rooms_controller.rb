class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def show
    @messages = Message.all
  end

  private

    def set_user
      session['user_id'] = current_user.id
    end
end
