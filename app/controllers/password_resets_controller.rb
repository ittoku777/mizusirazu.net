class PasswordResetsController < ApplicationController
  before_action :authenticate_token, only: [:edit, :update]
  before_action :already_logged_in

  # GET /password/new
  def new
  end

  # POST /password
  def create
    @user = User.find_by_email(params[:email])
    @user.deliver_reset_password_instructions! if @user
    redirect_to(root_path, notice: 'sent reset password to your email')
  end

  # GET /password/:id/edit
  def edit
  end

  # PUT /password/:id
  def update
    @user.password_confirmation = params[:password_confirmation]
    if @user.change_password(params[:password])
      redirect_to(root_path, notice: 'Reset password successfully')
    else
      render(action: 'edit', alert: 'Reset password failed')
    end
  end

  private

  def authenticate_token
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])
    if @user.blank?
      not_authenticated
      return
    end
  end
end
