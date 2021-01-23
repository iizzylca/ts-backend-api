class CartsController < ApplicationController
    def show
        @cart = Cart.find(params[:id])
        render json: @cart
    end

    def index
        carts = Cart.all
        render json: carts
    end

    def update
        @cart = Cart.find(params[:id])
        if @cart.update(cart_params)
            render json: @cart
        else
            render json: {error: 'Need Update'}, status: :bad_request
        end
    end
    
    def create
        cart = Cart.create(cart_params)
        render json: cart
        
    end

    def destroy
        @cart = Cart.find(params[:id])
        @cart.destroy
    end

    private 

    def cart_params 
        params.permit(:total, :quantity, :active, :user_id, :menu_id )
    end
end
