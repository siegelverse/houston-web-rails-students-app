class StudentsController < ApplicationController
    before_action :current_student, only: [:show, :edit, :update]

    def index 
        @students = Student.all
    end 

    def show 
       
    end 

    def new
        @student = Student.new
    end 

    def create
        new_student = Student.create(student_params)
        if !new_student.valid?
            flash[:errors] = new_student.errors.full_messages
            redirect_to new_student_path
        else 
            new_student.save
            redirect_to student_path(new_student)
        end
    end 

    def edit 
    end 

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect to student_path
    end

    def destroy 
        @student = Student.find(params[:id])
        @student.delete
        redirect_to student_path
    end 

    def current_student
        @student = Student.find(params[:id])
    end

    private 

    def student_params 
        params.require(:student).permit!
    end 
end
