class HomeController < ApplicationController
  def index
    def index
      @products = Product.all
    end
  end
end
