class FileStatusesController < ApplicationController
  before_action :set_file_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @file_statuses = FileStatus.all
    respond_with(@file_statuses)
  end

  def show
    respond_with(@file_status)
  end

  def new
    @file_status = FileStatus.new
    respond_with(@file_status)
  end

  def edit
  end

  def create
    @file_status = FileStatus.new(file_status_params)
    @file_status.save
    respond_with(@file_status)
  end

  def update
    @file_status.update(file_status_params)
    respond_with(@file_status)
  end

  def destroy
    @file_status.destroy
    respond_with(@file_status)
  end

  private
    def set_file_status
      @file_status = FileStatus.find(params[:id])
    end

    def file_status_params
      params.require(:file_status).permit(:code, :name)
    end
end
