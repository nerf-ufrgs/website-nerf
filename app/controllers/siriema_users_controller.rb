class SiriemaUsersController < ApplicationController
  before_action :find_siriema_user, only: %i[show]

  def index
    @siriema_user = SiriemaUser.all
  end

  def download_siriema_pt
    send_file "#{Rails.root}/public/SIRIEMA_2_0_PT-BR.zip", type: 'application/zip', x_sendfile: true
  end

  def download_siriema_en
    send_file "#{Rails.root}/public/SIRIEMA_2_0_EN.zip", type: 'application/zip', x_sendfile: true
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

  def download_siriema_en
    send_file(
      "#{Rails.root}/public/SIRIEMA_2_0_EN.zip",
      disposition: 'attachment'
    )
  end

  def download_siriema_pt
    send_file(
      "#{Rails.root}/public/SIRIEMA_2_0_PT-BR.zip",
      disposition: 'attachment'
    )
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
