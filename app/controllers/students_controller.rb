class StudentsController < ApplicationController
  def projects
  end

  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      render template: "steps/step_3"
    else
      render :new
    end
  end

  protected

  def student_params
    params.require(:student).permit(:job, :location, :name, :phone, :email, :wechat_account, :filepicker_url)
  end
end
