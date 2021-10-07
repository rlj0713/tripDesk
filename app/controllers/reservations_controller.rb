class ReservationsController < ApplicationController
    def index
        reservations = Reservation.all
        render json: reservations.to_json(except: [:created_at, :updated_at], include: [:guide, :customer])
    end
end