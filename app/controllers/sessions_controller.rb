class SessionsController < ApplicationController
  def new

  end

  def create
    student = Student.find_by(inindex: params[:session][:inindex])
    if student && student.authenticate(params[:session][:password])
        # Wszystko dobrze, logujemy
        log_in student
        redirect_to student
      else
        # Niedobrze
        render 'new'
     end

     def destroy
   log_out
   redirect_to root_url
    end

  end
end
