class CigarsController < ApplicationController
  before_action :set_cigar, only: [:show, :edit, :update, :destroy]

  # GET /cigars
  # GET /cigars.json
  def index
    @cigars = Cigar.all
  end

  # GET /cigars/1
  # GET /cigars/1.json
  def show
  end

  # GET /cigars/new
  def new
    @cigar = Cigar.new
  end

  # GET /cigars/1/edit
  def edit
  end

  # POST /cigars
  # POST /cigars.json
  def create
    @cigar = Cigar.new(cigar_params)

    respond_to do |format|
      if @cigar.save
        format.html { redirect_to @cigar, notice: 'Cigar was successfully created.' }
        format.json { render :show, status: :created, location: @cigar }
      else
        format.html { render :new }
        format.json { render json: @cigar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cigars/1
  # PATCH/PUT /cigars/1.json
  def update
    respond_to do |format|
      if @cigar.update(cigar_params)
        format.html { redirect_to @cigar, notice: 'Cigar was successfully updated.' }
        format.json { render :show, status: :ok, location: @cigar }
      else
        format.html { render :edit }
        format.json { render json: @cigar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cigars/1
  # DELETE /cigars/1.json
  def destroy
    @cigar.destroy
    respond_to do |format|
      format.html { redirect_to cigars_url, notice: 'Cigar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cigar
      @cigar = Cigar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cigar_params
      params.require(:cigar).permit(:brand, :origin, :description, :size, :shape, :binder, :filler, :wrapper, :price)
    end
end
