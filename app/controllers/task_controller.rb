class TaskController < ApplicationController
  def index
    if current_user.nil?
      redirect_to '/auth/twitter'
    else
      @semesters = Semester.where(user_id: current_user.id)
      @courses = Course.where(semester: @semesters)
      @assignments = Assignment.where(course: @course).order('due_date')
      @grouped_assignments = @assignments.group_by { |assignment| assignment.due_date }
    end
  end
end
