class WehnleadsController < ApplicationController
  before_action :set_wehnlead, only: [:show, :edit, :update, :destroy]

  # GET /wehnleads
  # GET /wehnleads.json
  def index
    @wehnleads = Wehnlead.all
  end

  # GET /wehnleads/1
  # GET /wehnleads/1.json
  def show
  end

  # GET /wehnleads/new
  def new
    @wehnlead = Wehnlead.new
  end

  # GET /wehnleads/1/edit
  def edit
  end

  # POST /wehnleads
  # POST /wehnleads.json
  def create
    @wehnlead = Wehnlead.new(wehnlead_params)

    respond_to do |format|
      if @wehnlead.save
        format.html { redirect_to @wehnlead, notice: 'Wehnlead was successfully created.' }
        format.json { render :show, status: :created, location: @wehnlead }
      else
        format.html { render :new }
        format.json { render json: @wehnlead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wehnleads/1
  # PATCH/PUT /wehnleads/1.json
  def update
    respond_to do |format|
      if @wehnlead.update(wehnlead_params)
        format.html { redirect_to @wehnlead, notice: 'Wehnlead was successfully updated.' }
        format.json { render :show, status: :ok, location: @wehnlead }
      else
        format.html { render :edit }
        format.json { render json: @wehnlead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wehnleads/1
  # DELETE /wehnleads/1.json
  def destroy
    @wehnlead.destroy
    respond_to do |format|
      format.html { redirect_to wehnleads_url, notice: 'Wehnlead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wehnlead
      @wehnlead = Wehnlead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wehnlead_params
      params.require(:wehnlead).permit(:name, :email, :phonenumber, :meref)
    end
end
