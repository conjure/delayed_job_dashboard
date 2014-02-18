class DjDashboard::JobsController < ::ActionController::Base

  layout "dj_dashboard/application"

  def index
    @jobs = Delayed::Job.all.order("run_at DESC")
  end

  def show
    @job = Delayed::Job.find params[:id]
    @handler = YAML.load(@job.handler)
  end

end