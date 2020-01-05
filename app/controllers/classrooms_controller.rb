class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @students = Classroom.all
  end

  def index
    @classrooms = Classroom.all
  end
end