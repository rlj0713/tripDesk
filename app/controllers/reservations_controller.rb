class ReservationsController < ApplicationController
    def show
        @reservation = Reservation.find_by_id(params[:id])
        render json: @reservation.to_json(except: [:created_at, :updated_at], include: [:guide, :customer])
    end
    
    def index
        reservations = Reservation.all
        render json: reservations.to_json(except: [:created_at, :updated_at], include: [:guide, :customer])
    end

    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(res_params)
        if @reservation.valid?
            @reservation.save
        end
    end

    def edit
        @reservation = Reservation.find_by_id(params[:id])
    end

    def update
        @reservation = reservation.find_by_id(params[:id])
        @reservation.update(res_params)
    end

    def destroy
        @reservation = reservation.find_by_id(params[:id])
        @reservation.destroy
    end

    private

    def res_params
        params.require(:reservation).permit(:reservation_date, :guide_id, :customer_id)
    end
end