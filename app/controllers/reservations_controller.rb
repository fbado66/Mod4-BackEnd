class ReservationsController < ApplicationController

    def index 
        @reservations = Reservation.all 
        render json: @reservations
    end 

    def create
        @reservation = Reservation.create!(reservation_params)
        render json: @reservation
    end 

    private
    def reservation_params
        params.permit(:user_id, :listing_id, :check_in_date, :check_out_date, :guest_count, :message_to_host)
    end 
end
