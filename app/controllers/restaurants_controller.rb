class RestaurantsController < ApplicationController
    def show
        @restaurant = Restaurant.find(params[:id])
        render json: @restaurant
    end

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def update
        @restaurant = Restaurant.find(params[:id])
        if @restaurant.update(restaurants_params)
            render json: @restaurant
        else
            render json: {error: 'Need Update'}, status: :bad_request
        end
    end
    
    def create
        restaurant = Restaurant.create(restaurants_params)
        render json: restaurant
        
    end

    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
    end

    private 

    def restaurants_params 
        params.permit(:name, :description, :image_url, :email, :phone)
    end
end
