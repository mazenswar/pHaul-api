class ReservationsController < ApplicationController

    def index
        render json: Reservation.all
    end

    def show
        reservation = Reservation.find(params[:id])
        render json: reservation, include: :truck
    end
    def create
        clash = Reservation.check_clash(res_params.to_hash)
        if clash
            render json: {error: 'reservation clash'}
        else
            reservation = Reservation.create(res_params)
            render json: reservation
        end
    end

    def destroy
        reservation = Reservation.find(params[:id])
        reservation.destroy
        render json: {message: 'Reservation successfully deleted'}
    end

    private

    def res_params
        params.require(:reservation).permit(:user_id, :truck_id, :start_time, :end_time, :total_price)
    end
end
