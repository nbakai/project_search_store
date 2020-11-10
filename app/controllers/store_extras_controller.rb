class StoreExtrasController < ApplicationController
  before_action :set_store_extra, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /store_extras
  # GET /store_extras.json
  def index
    @store_extras = StoreExtra.all
  end

  # GET /store_extras/1
  # GET /store_extras/1.json
  def show
  end

  # GET /store_extras/new
  def new
    @store_extra = StoreExtra.new
  end

  # GET /store_extras/1/edit
  def edit
  end

  # POST /store_extras
  # POST /store_extras.json
  def create
    @store_extra = StoreExtra.new(store_extra_params)

    respond_to do |format|
      if @store_extra.save
        format.html { redirect_to @store_extra, notice: 'Store extra was successfully created.' }
        format.json { render :show, status: :created, location: @store_extra }
      else
        format.html { render :new }
        format.json { render json: @store_extra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_extras/1
  # PATCH/PUT /store_extras/1.json
  def update
    respond_to do |format|
      if @store_extra.update(store_extra_params)
        format.html { redirect_to @store_extra, notice: 'Store extra was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_extra }
      else
        format.html { render :edit }
        format.json { render json: @store_extra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_extras/1
  # DELETE /store_extras/1.json
  def destroy
    @store_extra.destroy
    respond_to do |format|
      format.html { redirect_to store_extras_url, notice: 'Store extra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_extra
      @store_extra = StoreExtra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_extra_params
      params.require(:store_extra).permit(:link_facebook, :link_instagram, :link_whatsapp, :link_web, :horario_open, :horario_closed, :description, :store_id)
    end
end
