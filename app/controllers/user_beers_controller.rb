class UserBeersController < ApplicationController
    def index 
        user_beers = UserBeer.all 
        render json:user_beers, except: [:updated_at]
    end

    def create 
        user_beer = UserBeer.create(user_beer_params)
        render json:user_beer, except: [:updated_at]
    end

    def show 
        user_beer = UserBeer.find(params[:id])
        render json:user_beer, except: [:updated_at]
    end

    def update 
        user_beer = UserBeer.find(params[:id])
        user_beer.update(user_beer_params)
        render json:user_beer, except: [:updated_at]
    end

    def destroy
        user_beer = UserBeer.find(params[:id])
        user_beer.destroy
    end

    private 

    def user_beer_params
        params.require(:user_beer).permit!
    end
end
