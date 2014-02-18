class DjDashboard::JobsController < ::ActionController::Base

  layout "dj_dashboard/application"

  before_filter :get_job, only: [:show, :delete]

  def index
    @jobs = Delayed::Job.all.order("run_at DESC")
  end

  def show
    @handler = YAML.load(@job.handler)
  end

  def delete
  	@job.destroy
  	redirect_to jobs_path
  end

  def clear
  	Delayed::Job.destroy_all
  	redirect_to jobs_path
  end

  private

  	def get_job
    	@job = Delayed::Job.find params[:id]
  	end

end