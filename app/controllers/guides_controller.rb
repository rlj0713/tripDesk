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
        @guide = guide.find_by_id(params[:id])
        @guide.update(guide_params)
    end

    def destroy
        @guide = guide.find_by_id(params[:id])
        @guide.destroy
    end

    private

    def guide_params
        params.require(:guide).permit(:first_name, :last_name)
    end
end