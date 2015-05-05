class TaskController < ApplicationController
  def index
    if current_user.nil?
      redirect_to '/auth/twitter'
    else
      @semesters = Semester.where(user_id: session[:user_id])
      @courses = Course.where(semester: @semesters)
      @assignments = Assignment.where(course: @courses)
      @grouped_assignments = @assignments.group_by { |assignment| assignment.due_date }
    end
  end

  def cascade
    @semesters = Semester.where(user_id: session[:user_id])
    @ordered_semesters = @semesters.order('start_date').reverse_order
    @courses = Course.where(semester: @semesters)
    @grouped_courses = @courses.group_by { |course| course.semester_id }
    @sources = Source.where(course: @courses)
    @grouped_sources = @sources.group_by { |source| source.course_id }
  end
end

