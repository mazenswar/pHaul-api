class TrucksController < ApplicationController
    def index
        trucks = Truck.all
        render json: trucks, include: :reservations
    end

    def show
        truck = Truck.find(params[:id])
        render json: truck, include: :reservations
    end
    
    # private

    # def truck_params
    #     params.permit()
    # end
end
