class StorextrasController < ApplicationController
  before_action :set_storextra, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_store!, only: [ :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show]
  # GET /storextras
  # GET /storextras.json
  def index
  
    @storextras = Storextra.order("rating ASC").page(params[:page]) unless  store_signed_in?
    @storextras = Storextra.where(store_id: current_store.id) if store_signed_in? 
    @q = Storextra.ransack(params[:q]) 
    @storextras = @q.result.includes(:store).page(params[:page])

    # @storextras = Storextra.where('description LIKE ?', "%#{params[:q]}%") if params[:q]
    #@products = Products.all.where(storextra_id: @storextra.id)
  
  end

  # GET /storextras/1
  # GET /storextras/1.json
  def show
    @storextra = Storextra.find(params[:id]) if store_signed_in? 
    @comment = Comment.new(rating: 0)
    @product = Product.new
    #@user = User.all
    #@comments = Comment.page(params[:page])
    #@comments = Comment.where(storextra_id: @storextra.id, user_id: @user).order("created_at ASC").page(params[:page])
  end

  # GET /storextras/new
  def new
    @store = Store.find_by(params[:id])
    @storextra = Storextra.new
  end

  # GET /storextras/1/edit
  def edit
  end

  # POST /storextras
  # POST /storextras.json
  def create
    @store = current_store
    @storextra = Storextra.new(storextra_params)
    @storextra.id = current_store.id
    @storextra.save!
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
      format.html { redirect_to root_path, notice: 'Has eliminado los datos de tu tienda!' }
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
      params.require(:storextra).permit(:description, :horario_open, :horario_close, :link_facebook, :link_instagram, :link_whatsapp, :link_web, :store_id, :category_id, :avatar , :rating)
    end
  protected
    def authenticate_user!
      redirect_to root_path, notice: "You must login" unless user_signed_in? || store_signed_in?
    end
end
