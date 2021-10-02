class GuidesController < ApplicationController
    def index
        guides = Guide.all
        render json: guides
    end
end