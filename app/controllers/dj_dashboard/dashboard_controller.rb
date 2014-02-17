class DjDashboard::DashboardController < ::ActionController::Base

  def show
    @jobs = Delayed::Job.all
  end

end