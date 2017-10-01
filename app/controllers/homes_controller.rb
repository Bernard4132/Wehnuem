class HomesController < ApplicationController

  # GET /homes
  # GET /homes.json
  def index
    @homes = Home.all
  end

  # GET /homes/1
  # GET /homes/1.json
  def show
    @home = Home.find(params[:id])
  end

  # GET /homes/new
  def new 
   session[:home_params] ||= {}
  @home = Home.new(session[:home_params])
  @home.current_step = session[:home_step]
  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes
  # POST /homes.json
  def create
    session[:home_params].deep_merge!(params[:home]) if params[:home]
    @home = Home.new(session[:home_params])
    @home.current_step = session[:home_step]
    if @home.valid?
      if params[:back_button]
        @home.previous_step
      elsif @home.last_step?
        @home.save if @home.all_valid?
      else
        @home.next_step
      end
      session[:home_step] = @home.current_step
    end
    if @home.new_record?
      render "new"
    else
      session[:home_step] = session[:home_params] = nil
      flash[:notice] = "Home saved!"
      redirect_to @home
    end
  end

  # PATCH/PUT /homes/1
  # PATCH/PUT /homes/1.json
  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: 'Home was successfully updated.' }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homes/1
  # DELETE /homes/1.json
  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_params
      params.require(:home).permit(:firstname, :lastname, :middlename, :email, :phonenumber, :employmentstatus, :occupation)
    end
end
