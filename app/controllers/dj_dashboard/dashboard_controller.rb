class DjDashboard::DashboardController < ::ActionController::Base

  layout "dj_dashboard/application"

  def show
    @jobs = Delayed::Job.all
  end

end