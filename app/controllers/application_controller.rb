class ApplicationController < ActionController::Base

  before_action :require_login
  protect_from_forgery with: :exception

  def current_student
    Student.find_by_id(session[:student_id])
  end

  helper_method :current_student

  private

  def require_login
    unless(current_student)
      redirect_to(login_path)
    end
  end

end
