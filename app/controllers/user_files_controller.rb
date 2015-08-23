class UserFilesController < ApplicationController
  before_action :set_user_file, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_files = UserFile.all
    respond_with(@user_files)
  end

  def show
    respond_with(@user_file)
  end

  def new
    @user_file = UserFile.new
    respond_with(@user_file)
  end

  def edit
  end

  def create
    @user_file = UserFile.new(user_file_params)
    @user_file.user = current_user
    @user_file.save
    respond_with(@user_file)
  end

  def update
    @user_file.update(user_file_params)
    respond_with(@user_file)
  end

  def destroy
    @user_file.destroy
    respond_with(@user_file)
  end

  private
    def set_user_file
      @user_file = UserFile.find(params[:id])
    end

    def user_file_params
      params.require(:user_file).permit(:file, :file_status_id)
    end
end
