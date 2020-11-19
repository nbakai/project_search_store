class StoresController < ApplicationController
    def index
      @store  = Store.find(params[:id])
     
    end
    def show 
      @store  = Store.find(params[:id])
      @storextra = Storextra.find(@store.id)
      
      @chart_store = Product.where(store_id: current_store).group_by_day(:created_at).count

    end
  
end