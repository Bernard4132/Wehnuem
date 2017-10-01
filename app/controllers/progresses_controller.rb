class ProgressesController < ApplicationController
  before_action :set_progress, only: [:show, :edit, :update, :destroy]
  before_action :set_project
  before_action :authenticate_user!

  # GET /progresses
  # GET /progresses.json
  def index
    
  end

  # GET /progresses/1
  # GET /progresses/1.json
  def show
  end

  # GET /progresses/new
  def new
    @progress = @project.progresses.new
    @progress.photos.new
  end

  # GET /progresses/1/edit
  def edit
  end

  # POST /progresses
  # POST /progresses.json
  def create
    @progress = @project.progresses.new(progress_params)
    respond_to do |format|
      if @progress.save
        if params[:photos_attributes]
          params[:photos_attributes].each do |photo|
            @progress.photos.create(progessimage: photo[:progessimage])
          end
        end
        format.html { redirect_to @project, notice: 'Progress was successfully added.' }
        format.json { render :show, status: :created, location: @progress }
      else
        format.html { render :new }
        format.json { render json: @progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progresses/1
  # PATCH/PUT /progresses/1.json
  def update
    respond_to do |format|
      if @progress.update(progress_params)
        format.html { redirect_to @progress, notice: 'Progress was successfully updated.' }
        format.json { render :show, status: :ok, location: @progress }
      else
        format.html { render :edit }
        format.json { render json: @progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progresses/1
  # DELETE /progresses/1.json
  def destroy
    @progress.destroy
    respond_to do |format|
      format.html { redirect_to progresses_url, notice: 'Progress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progress
      @progress = Progress.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def progress_params
      params.require(:progress).permit(:title, :description, :photos_attributes => [:progessimage])
    end
end
