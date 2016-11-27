class PourtestsController < ApplicationController
  before_action :set_pourtest, only: [:show, :edit, :update, :destroy]

  # GET /pourtests
  # GET /pourtests.json
  def index
    @pourtests = Pourtest.all
  end

  # GET /pourtests/1
  # GET /pourtests/1.json
  def show
  end

  # GET /pourtests/new
  def new
    @pourtest = Pourtest.new
  end

  # GET /pourtests/1/edit
  def edit
  end

  # POST /pourtests
  # POST /pourtests.json
  def create
    @pourtest = Pourtest.new(pourtest_params)

    respond_to do |format|
      if @pourtest.save
        format.html { redirect_to @pourtest, notice: 'Pourtest was successfully created.' }
        format.json { render :show, status: :created, location: @pourtest }
      else
        format.html { render :new }
        format.json { render json: @pourtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pourtests/1
  # PATCH/PUT /pourtests/1.json
  def update
    respond_to do |format|
      if @pourtest.update(pourtest_params)
        format.html { redirect_to @pourtest, notice: 'Pourtest was successfully updated.' }
        format.json { render :show, status: :ok, location: @pourtest }
      else
        format.html { render :edit }
        format.json { render json: @pourtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pourtests/1
  # DELETE /pourtests/1.json
  def destroy
    @pourtest.destroy
    respond_to do |format|
      format.html { redirect_to pourtests_url, notice: 'Pourtest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pourtest
      @pourtest = Pourtest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pourtest_params
      params.require(:pourtest).permit(:name, :surname)
    end
end
