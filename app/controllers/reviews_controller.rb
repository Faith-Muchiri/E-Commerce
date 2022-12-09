class ReviewsController < ApplicationController
    # def index 
    #     reviews = Review.all
    #     render json: reviews
    # end
    def index
        if params[:product_id]
            product = Product.find(params[:product_id])
            @reviews = Product.reviews
        else
            @reviews.all = Review.all 
            render json: @reviews, status: :ok
        end        
    end

    def show 
        @review = Review.find(params[:id])
        render json: @review, status: :ok
    end
end
