class StoresController < ApplicationController
    def index
      @store  = Store.find(params[:id])
     
    end
    def show 
      @store  = Store.find(params[:id])
      @storextra = Storextra.find(@store.id)
    end
  
end