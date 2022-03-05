class SiriemaUsersController < ApplicationController
  def new
    @siriema_user = SiriemaUser.new
  end

  def create
    @siriema_user = SiriemaUser.new(siriema_user_params)
    if @siriema_user.save
      redirect_to new_siriema_user_path
    end
  end

  private

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
