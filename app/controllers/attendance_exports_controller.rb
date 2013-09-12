class AttendanceExportsController < ApplicationController

def new
     @attendance_records = []
     @courses = Course.find_all_by_client_id(current_user.client_id)
                       .sort_by{ |course| course.dept_code }
    if session[:course_id] && session[:start_date] && session[:end_date]
      @attendance_records = AttendanceRecord.includes(:student).includes(:course)
                                             .where("client_id = ? AND course_id = ? AND date >= ? AND date <= ?",
                                              current_user.client_id, 
                                              session[:course_id], 
                                              session[:start_date],
                                              session[:end_date] )
      @dates = AttendanceRecord.dates(@attendance_records)
      @course = @attendance_records.first.course
      @students = @course.students
      respond_to do |format|
        format.html
        format.csv { render text: AttendanceRecord.to_csv(@attendance_records, @course, @students) }
      end
    end
  end

  def create
    session[:course_id] = params[:attendance_record][:course_id]
    session[:start_date] = params[:attendance_record][:start_date]
    session[:end_date] = params[:attendance_record][:end_date]
    redirect_to :back
  end

end
