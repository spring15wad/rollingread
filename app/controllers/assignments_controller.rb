class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]

  # GET /assignments
  # GET /assignments.json
  def index
    @semesters = Semester.where(user_id: session[:user_id])
    @courses = Course.where(semester: @semesters)
    @assignments = Assignment.where(course: @courses)
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
  end

  # GET /assignments/new
  def new
    @assignment = Assignment.new
  end

  # GET /assignments/newflip
  def newflip
    @assignment = Assignment.new                                                      # <-- note singular
    @assignment.course_id = params[:course_id]
  end

  # GET /flipless/:course_id
  def flipless
    if Source.where(short_source: 'single_use').empty?
      @single_use_source = Source.new(short_source: 'single_use', many_assignments: false)
      @single_use_source.save
    end

    @course = Course.find(params[:course_id])
    @sources = Source.where(course: params[:course_id])
    @assignments = Assignment.where(course_id: params[:course_id])                    # <-- note plural
    @grouped_assignments = @assignments.group_by { |assignment| assignment.due_date }
  end

  # GET /assignments/1/edit
  def edit
  end

  # POST /assignments
  # POST /assignments.json
  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.due_date = Date.parse(assignment_params[:due_date])

    if @assignment.save
      redirect_to assignment_for_course_path(assignment.course_id), notice: 'Assignment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /assignments/1
  # PATCH/PUT /assignments/1.json
  def update
    if @assignment.update(assignment_params)
      redirect_to @assignment, notice: 'Assignment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to assignments_url, notice: 'Assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:short_assignment, :assignment_details, :due_date, :completed, :source_id, :course_id)
    end
end
