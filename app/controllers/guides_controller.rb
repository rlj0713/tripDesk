class GuidesController < ApplicationController
    def show
        @guide = Guide.find_by_id(params[:id])
        render json: GuideSerializer.new(@guide)
    end
    
    def index
        guides = Guide.all
        render json: GuideSerializer.new(guides)
    end

    def new
        @guide = Guide.new
    end

    def create
        @guide = Guide.new(guide_params)
        if @guide.valid?
            @guide.save
        end
    end

    def edit
        @guide = Guide.find_by_id(params[:id])
    end

    def update
        @guide = Guide.find_by_id(params[:id])
        @guide.update(guide_params)
    end

    def destroy
        @guide = Guide.find_by_id(params[:id])
        @reservations = Reservation.all
        @permission = true
        @reservations.each do |reservation|
            if reservation.guide_id == @guide.id
                @permission = false
            end
        end

        if @permission == true
            @guide.destroy
        else
            page.alert('This guide is assigned to a trip!')
        end
    end

    private

    def guide_params
        params.require(:guide).permit(:first_name, :last_name)
    end
end