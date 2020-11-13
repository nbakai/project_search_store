class UsersController < ApplicationController
    def perfil
      @user  = User.find(params[:id])
      
      
    end
end