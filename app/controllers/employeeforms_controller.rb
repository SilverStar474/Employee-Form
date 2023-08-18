class EmployeeformsController < ApplicationController

    def index
        @employeeform = Employeeform.all
    end

    def show
        @employeeform = Employeeform.find(params[:id])
    end

    def new
        @employeeform = Employeeform.new
    end

    def create
        @employeeform = Employeeform.new(employeeform_params)
        if @employeeform.save
            redirect_to @employeeform, notice: "New employeeform was successfully created."
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @employeeform = Employeeform.find(params[:id])
    end
    
    def update
        @employeeform = Employeeform.find(params[:id])
        if @employeeform.update(employeeform_params)
            redirect_to root_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @employeeform = Employeeform.find(params[:id])
        @employeeform.destroy
        redirect_to root_path
    end

    private
    def employeeform_params
        params.require(:employeeform).permit(:first_name, :last_name, :phone_number, :address, 
             :email, :college, :degree, :stream, :cgpa, :dob, :experienced, :marital_status)
    end
end