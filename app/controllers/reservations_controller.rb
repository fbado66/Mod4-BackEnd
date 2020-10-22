class ReservationsController < ApplicationController

    before_action :authorized, only: [:create]


    def index 
        @reservations = Reservation.all 
        render json: @reservations
    end 

    def create
        @reservation = @user.reservations.create!(reservation_params)
        render json: @reservation
    end 

    private
    def reservation_params
        params.permit(:listing_id, :check_in_date, :check_out_date, :guest_count)
    end 
end
