class Api::V1::BmrsController < ApplicationController
    def index
        @bmrs = Bmr.all
        render json: @bmrs
    end
    def create 
        data_json = JSON.parse request.body.read
        @bmr = Bmr.new(data_json)
        
        @bmr.bmr_value = 66.47 + (13.75 * @bmr.weight) + (5.003 * @bmr.height) - (6.755 * @bmr.age)

        if @bmr.save
            render json: @bmr
        else    
            render json: {error: "unable to calculate bmr value"}, status: 400
        end
        
    end
end
