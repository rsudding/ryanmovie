class MoviedetailsController < ApplicationController
  before_action :set_moviedetail, only: [:show, :edit, :update, :destroy]

  # GET /moviedetails
  # GET /moviedetails.json
  def index
    @moviedetails = Moviedetail.all
  end

  # GET /moviedetails/1
  # GET /moviedetails/1.json
  def show
  end

  # GET /moviedetails/new
  def new
    @moviedetail = Moviedetail.new
  end

  # GET /moviedetails/1/edit
  def edit
  end

  # POST /moviedetails
  # POST /moviedetails.json
  def create
    @moviedetail = Moviedetail.new(moviedetail_params)

    respond_to do |format|
      if @moviedetail.save
        format.html { redirect_to @moviedetail, notice: 'Moviedetail was successfully created.' }
        format.json { render :show, status: :created, location: @moviedetail }
      else
        format.html { render :new }
        format.json { render json: @moviedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moviedetails/1
  # PATCH/PUT /moviedetails/1.json
  def update
    respond_to do |format|
      if @moviedetail.update(moviedetail_params)
        format.html { redirect_to @moviedetail, notice: 'Moviedetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @moviedetail }
      else
        format.html { render :edit }
        format.json { render json: @moviedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moviedetails/1
  # DELETE /moviedetails/1.json
  def destroy
    @moviedetail.destroy
    respond_to do |format|
      format.html { redirect_to moviedetails_url, notice: 'Moviedetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moviedetail
      @moviedetail = Moviedetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moviedetail_params
      params.require(:moviedetail).permit(:title, :year, :rated, :awards, :metascore, :imdbrating)
    end
end
