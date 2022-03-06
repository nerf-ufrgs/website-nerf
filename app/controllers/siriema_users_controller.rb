class SiriemaUsersController < ApplicationController
  before_action :find_siriema_user, only: %i[show]

  def index
    @siriema_user = SiriemaUser.all
  end

  def show
  end

  def new
    @siriema_user = SiriemaUser.new
  end

  def create
    @siriema_user = SiriemaUser.new(siriema_user_params)
    if @siriema_user.save
      redirect_to siriema_user_path(@siriema_user)
    else
      render :new
    end
  end

  private

  def find_siriema_user
    @siriema_user = SiriemaUser.friendly.find(params[:id])
  end

  def siriema_user_params
    params.require(:siriema_user).permit(
      :name,
      :email,
      :institution,
      :city,
      :country,
      :found_out_how,
      :worked_where
    )
  end
end
