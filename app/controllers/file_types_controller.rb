class FileTypesController < ApplicationController
  before_action :set_file_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @file_types = FileType.all
    respond_with(@file_types)
  end

  def show
    respond_with(@file_type)
  end

  def new
    @file_type = FileType.new
    respond_with(@file_type)
  end

  def edit
  end

  def create
    @file_type = FileType.new(file_type_params)
    @file_type.save
    respond_with(@file_type)
  end

  def update
    @file_type.update(file_type_params)
    respond_with(@file_type)
  end

  def destroy
    @file_type.destroy
    respond_with(@file_type)
  end

  private
    def set_file_type
      @file_type = FileType.find(params[:id])
    end

    def file_type_params
      params.require(:file_type).permit(:code, :name)
    end
end
