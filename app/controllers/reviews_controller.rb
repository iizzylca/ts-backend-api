class ReviewsController < ApplicationController

    def show
        @review = Review.find(params[:id])
        render json: @review
    end

    def index
        reviews = Review.all
        render json: reviews
    end

    def update
        @review = Review.find(params[:id])
        if @review.update(reviews_params)
            render json: @review
        else
            render json: {error: 'Need Update'}, status: :bad_request
        end
    end
    
    def create
        user = User.find_or_create_by(first_name: params[:first_name])
        # When we add more restaurants we need to change code below
        restaurant = Restaurant.first

        review_hash = {content: params[:content], rating: params[:rating], user_id: user.id, restaurant_id: restaurant.id}

        review = Review.create(review_hash)
        render json: review
        
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
    end

    private 

    def reviews_params 
        params.permit(:content, :rating, :user_id, :restaurant_id)
    end

end
