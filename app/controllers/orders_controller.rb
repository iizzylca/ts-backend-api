class OrdersController < ApplicationController

    def show
        @order = Order.find(params[:id])
        render json: @order
    end

    def index
        orders = Order.all
        render json: orders
    end

    def update
        @order = Order.find(params[:id])
        if @order.update(orders_params)
            render json: @order
        else
            render json: {error: 'Need Update'}, status: :bad_request
        end
    end
    
    def create
        order = Order.create(orders_params)
        render json: order
        
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
    end

    private 

    def orders_params 
        params.permit(:total, :user_id, :menu_item_id)
    end

end
