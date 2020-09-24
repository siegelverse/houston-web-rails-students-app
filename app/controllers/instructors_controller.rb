class InstructorsController < ApplicationController
    before_action :current_instructor, only: [:show, :edit, :update]

    def index 
        @instructors = Instructor.all
    end 

    def show 
       
    end 

    def new
        @instructor = Instructor.new
    end 

    def create
        new_instructor = Instructor.create(instructor_params)
        if !new_instructor.valid?
            flash[:errors] = new_instructor.errors.full_messages
            redirect_to new_instructor_path
        else 
            new_instructor.save
            redirect_to instructor_path(new_instructor)
        end
    end 

    def edit 
    end 

    def update 
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
        redirect_to instructor_path(@instructor)
    end

    def destroy 
        @instructor = Instructor.find(params[:id])
        @instructor.delete
        redirect_to instructors_path
    end

    def current_instructor
        @instructor = Instructor.find(params[:id])
    end

    private 

    def instructor_params 
        params.require(:instructor).permit!
    end 
end
