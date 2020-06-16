class BeersController < ApplicationController

    def create 
        beer = Beer.create(beer_params)
        render json:beer, except: [:created_at, :updated_at]
    end

    def index 
        beers = Beer.all
        render json:beers, except: [:created_at, :updated_at]
    end

    def show 
        beer = Beer.find_by(name: params[:id])
        render json:beer, except: [:created_at, :updated_at]
    end

    def update 
        beer = Beer.find(params[:id])
        beer.update(beer_params)
        render json:beer, except: [:created_at, :updated_at]
    end

    private 

    def beer_params
        params.require(:beer).permit!
    end
end
