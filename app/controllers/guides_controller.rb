class GuidesController < ApplicationController
    def index
        guides = Guide.all
        render json: GuideSerializer.new(guides)
    end
end