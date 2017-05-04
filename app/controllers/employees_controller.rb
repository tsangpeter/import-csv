class EmployeesController < ApplicationController

  def index
  	@employees = Employee.order(params[:sort])
  end

  def import
  	Employee.import(params[:file])
  	redirect_to root_url, notice: "Data imported!"
  end

end
