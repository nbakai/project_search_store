class LikesController < ApplicationController
    before_action :authenticate_store!
    before_action :find_storextra
    before_action :find_like, only: [:destroy]
    # GET /likes
    # GET /likes.json
    def index
      @likes = Like.all
     
    end
  
    # GET /likes/1
    # GET /likes/1.json
    def show
    end
  

    # GET /likes/1/edit
    def edit
    end
  
    # POST /likes
    # POST /likes.json
    def create
        # @storextra.likes.create(user_id: current_user.id)
        # redirect_to storextra_path(@storextra)
        if already_liked?
            flash[:notice] = "You can't like more than once"
        else
            @storextra.likes.create(user_id: current_user.id)
        end
          redirect_to storextra_path(@storextra)
       
    end
    def find_like
        @like = @storextra.likes.find(params[:id])
     end
  
    # DELETE /likes/1
    # DELETE /likes/1.json
    def destroy
        if !(already_liked?)
          flash[:notice] = "Cannot unlike"
        else
          @like.destroy
        end
        redirect_to storextra_path(@storextra)
    end
  
    private
        def find_storextra
            @storextra = Storextra.find(params[:storextra_id])
        end
        def already_liked?
            Like.where(user_id: current_user.id, storextra_id: params[:storextra_id]).exists?
        end
            
        def like_params
            params.require(:like).permit(:user_id, :storextra_id)
        end
end
