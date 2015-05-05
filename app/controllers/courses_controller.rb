class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @semesters = Semester.where(user_id: session[:user_id])
    @courses = Course.where(semester: @semesters)
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
    @course.semester_id = params[:semester_id]
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @semester = Semester.find(course_params[:semester_id])
    @course = Course.new(course_params[:course]) do |c|
      c.course_number = course_params[:course_number]
      c.short_course = course_params[:short_course]
      c.full_course = course_params[:full_course]
      c.meet_days = course_params[:meet_days]
      c.all_days = every_meet_day(c.meet_days,@semester.start_date,@semester.end_date)
      c.semester_id = course_params[:semester_id]
    end

    if @course.save
      redirect_to @course, notice: 'Course was successfully created.' 
    else
      render :new
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    @semester = Semester.find(course_params[:semester_id])
    @course.all_days = every_meet_day(course_params[:meet_days],@semester.start_date,@semester.end_date)

    if @course.update(course_params)
      redirect_to @course, notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:id, :course_number, :short_course, :full_course, :semester_id, meet_days: [])
    end

    def every_meet_day(meet_days,start_date,end_date)

      all_days = []
      i = 0

      meet_days.each do | this_day |

        loop_date = start_date

        while loop_date.wday < this_day.to_i
          loop_date = Date.jd(loop_date.jd + 1)
        end

        while loop_date < end_date
          all_days[i] = loop_date
          loop_date = Date.jd(loop_date.jd + 7)
          i = i + 1
        end
      end
      return all_days.sort
    end

end
