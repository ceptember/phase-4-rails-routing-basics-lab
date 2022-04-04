class GradesController < ApplicationController
    def index
        students = Student.all
        by_grade = students.order(grade: :desc)
        render json: by_grade
    end
end
