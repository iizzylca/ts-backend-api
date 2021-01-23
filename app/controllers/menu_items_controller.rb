class MenuItemsController < ApplicationController
    def show
        @menu_item = MenuItem.find(params[:id])
        render json: @menu_item
    end

    def index
        menu_items = MenuItem.all
        render json: menu_items
    end

    def update
        @menu_item = MenuItem.find(params[:id])
        if @menu_item.update(menu_items_params)
            render json: @menu_item
        else
            render json: {error: 'Need Update'}, status: :bad_request
        end
    end
    
    def create
        menu_item = MenuItem.create(menu_items_params)
        render json: menu_item
        
    end

    def destroy
        @menu_item =MenuItem.find(params[:id])
        @menu_item.destroy
    end

    private 

    def menu_items_params 
        params.permit(:title, :description, :ingredients, :image_url, :price, :restaurant_id)
    end
end
