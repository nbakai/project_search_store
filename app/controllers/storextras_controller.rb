class StorextrasController < ApplicationController
  before_action :set_storextra, only: [:show, :edit, :update, :destroy]
  
  # GET /storextras
  # GET /storextras.json
  def index
    @storextras = Storextra.all unless  store_signed_in?
    @storextras = Storextra.where(store_id: current_store.id) if store_signed_in? 
   
    
    @storextras = Storextra.where('description LIKE ?', "%#{params[:q]}%") if params[:q]
    #@products = Products.all.where(storextra_id: @storextra.id)
    
  end

  # GET /storextras/1
  # GET /storextras/1.json
  def show
    @storextra = Storextra.find(params[:id]) if store_signed_in? 
    @product = Product.new
    respond_to do |format|
      format.html {}
      format.js { @products }
    end
  end

  # GET /storextras/new
  def new
    @storextra = Storextra.new
  end

  # GET /storextras/1/edit
  def edit
  end

  # POST /storextras
  # POST /storextras.json
  def create
    @storextra = Storextra.new(storextra_params)

    respond_to do |format|
      if @storextra.save
        format.html { redirect_to @storextra, notice: 'Storextra was successfully created.' }
        format.json { render :show, status: :created, location: @storextra }
      else
        format.html { render :new }
        format.json { render json: @storextra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storextras/1
  # PATCH/PUT /storextras/1.json
  def update
    respond_to do |format|
      if @storextra.update(storextra_params)
        format.html { redirect_to @storextra, notice: 'Storextra was successfully updated.' }
        format.json { render :show, status: :ok, location: @storextra }
      else
        format.html { render :edit }
        format.json { render json: @storextra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storextras/1
  # DELETE /storextras/1.json
  def destroy
    @storextra.destroy
    respond_to do |format|
      format.html { redirect_to storextras_url, notice: 'Storextra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storextra
      @storextra = Storextra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def storextra_params
      params.require(:storextra).permit(:description, :horario_open, :horario_close, :link_facebook, :link_instagram, :link_whatsapp, :link_web, :store_id, :category_id, :avatar)
    end
end
