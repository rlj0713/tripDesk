class CustomersController < ApplicationController
    def index
        customers = Customer.all
        render json: CustomerSerializer.new(customers)
    end
end