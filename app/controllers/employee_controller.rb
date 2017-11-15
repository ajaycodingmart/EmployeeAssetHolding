class EmployeeController < ApplicationController
  def index
  end

  def show
    @emp = Employee.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end
end
