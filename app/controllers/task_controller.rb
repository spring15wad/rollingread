class TaskController < ApplicationController
  def index
    @assignments = Assignment.order('due_date')
    @grouped_assignments = @assignments.group_by { |assignment| assignment.due_date }
  end
end
