class DjDashboard::JobsController < ::ActionController::Base

  layout "dj_dashboard/application"

  def index
    @jobs = Delayed::Job.all.order("run_at DESC")
  end

  def show
    @job = Delayed::Job.find_by_id params[:id]
    if @job.blank? 
      flash[:jobs] = "Job #{params[:id]} has finished"
      redirect_to jobs_path
    else
      @handler = YAML.load(@job.handler)
    end
  end

end