class ProductsController < ApplicationController
    # before_action :authorize

    def index 
        @products = Product.all
        render json: @products
    end

    def show
        @product = Product.find(params[:id])        
        render json: @product
    end

    # private
    # def authorize
    #     return render json: { errors: ["Not authorized"] }, status: :unauthorized unless session.include? :user_id
    # end
    
end
