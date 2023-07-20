class StudentsController < ApplicationController

    def index 
        students = Student.all 
        render json: students, status: :ok
    end    

    def grades
        students_by_grade = Student.order(grade: :desc)
        render json: students_by_grade
    end

    def highest_grade
        student = Student.order(grade: :desc).first 
        render json: student
    end


end
