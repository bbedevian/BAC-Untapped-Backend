class ApiController < ApplicationController
   

    def beers
        cID = ENV["CLIENT_ID"]
        secret= ENV["CLIENT_SECRET"]
        response = HTTParty.get("https://api.untappd.com/v4/search/beer?q=#{params[:id]}&client_id=#{cID}&client_secret=#{secret}", {
            headers:{'accept': 'application/json',
            'content-type': 'application/json'
                }})
        render json: response
    end 

end