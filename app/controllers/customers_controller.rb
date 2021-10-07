class CustomersController < ApplicationController
    def show
        @customer = Customer.find_by_id(params[:id])
        render json: CustomerSerializer.new(@customer)
    end
    
    def index
        customers = Customer.all
        render json: CustomerSerializer.new(customers)
    end
    
    private

    def customer_params
        params.require(:customer).permit(:first_name, :last_name)
    end
end