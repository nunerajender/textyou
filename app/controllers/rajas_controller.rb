class RajasController < ApplicationController
  before_action :set_raja, only: [:show, :edit, :update, :destroy]

  # GET /rajas
  # GET /rajas.json
  def index
    @rajas = Raja.all
  end

  # GET /rajas/1
  # GET /rajas/1.json
  def show
  end

  # GET /rajas/new
  def new
    @raja = Raja.new
  end

  # GET /rajas/1/edit
  def edit
  end

  # POST /rajas
  # POST /rajas.json
  def create
    @raja = Raja.new(raja_params)

    respond_to do |format|
      if @raja.save
        format.html { redirect_to @raja, notice: 'Raja was successfully created.' }
        format.json { render :show, status: :created, location: @raja }
      else
        format.html { render :new }
        format.json { render json: @raja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rajas/1
  # PATCH/PUT /rajas/1.json
  def update
    respond_to do |format|
      if @raja.update(raja_params)
        format.html { redirect_to @raja, notice: 'Raja was successfully updated.' }
        format.json { render :show, status: :ok, location: @raja }
      else
        format.html { render :edit }
        format.json { render json: @raja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rajas/1
  # DELETE /rajas/1.json
  def destroy
    @raja.destroy
    respond_to do |format|
      format.html { redirect_to rajas_url, notice: 'Raja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raja
      @raja = Raja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raja_params
      params.require(:raja).permit(:sender, :reciver, :message)
    end
end
