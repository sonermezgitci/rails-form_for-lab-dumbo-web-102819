class StudentsController < ApplicationController 
    
    
    def new 
        @student = Student.new 
    end 
    
    
    def create 
        @white = params.require(:student).permit(:first_name, :last_name)
        @student = Student.new(@white)
        @student.save
        redirect_to student_path(@student)
    end 
    
    
    def show 
        @student = Student.find[params[:id]]
    end 

    def edit 
        @student = Student.find(params[:id])
    end 


    def update
        @student = Student.find(params[:id])
        @student.update[params.require(:student)].permit(:first_name, :last_name)
        redirect_student_path(@student)

    end 

end 



