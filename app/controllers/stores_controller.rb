class StoresController < ApplicationController
    def index
      @store = Store.all
      @store  = Store.find(params[:id]) if store_signed_in?
      @storextras = Storextra.all
      
    end
    def show 
      @store  = Store.find(params[:id])
      @storextra = Storextra.find(@store.id)
      
      @chart_store = Product.where(store_id: current_store).group_by_day(:created_at).count

    end
  
end