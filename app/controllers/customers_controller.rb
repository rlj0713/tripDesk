class CustomersController < ApplicationController
    def show
        @customer = Customer.find_by_id(params[:id])
        render json: CustomerSerializer.new(@customer)
    end
    
    def index
        customers = Customer.all
        render json: CustomerSerializer.new(customers)
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.new(customer_params)
        if @customer.valid?
            @customer.save
        end
    end

    def edit
        @customer = Customer.find_by_id(params[:id])
    end

    def update
        @customer = Customer.find_by_id(params[:id])
        @customer.update(customer_params)
    end

    def destroy
        @customer = Customer.find_by_id(params[:id])
        @customer.destroy
    end

    
    private

    def customer_params
        params.require(:customer).permit(:first_name, :last_name)
    end
end