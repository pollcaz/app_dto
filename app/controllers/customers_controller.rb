class CustomersController < ApplicationController

  def index
      @customers = Customer.search(params[:search], params[:page])
  end

  def show
      @customer = Customer.find(params[:id])
  end

  def new
      @customer = Customer.new
  end

  def edit
      @customer = Customer.find(params[:id])
  end

  def create
      @customer = Customer.new(params[:customer])
      render :action => :new unless @customer.save
  end

  def update
      @customer = Customer.find(params[:id])
      render :action => :edit unless @customer.update_attributes(params[:customer])
  end

  def destroy
      @customer = Customer.find(params[:id])
      @customer.destroy
  end
  
end
