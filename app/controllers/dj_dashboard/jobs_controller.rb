class DjDashboard::JobsController < ::ActionController::Base

  layout "dj_dashboard/application"

  before_filter :get_job, only: [:show, :delete]

  def index
    @jobs = Delayed::Job.all.order("run_at ASC")
  end

  def show
    if @job.blank? 
      flash[:jobs] = "Job #{params[:id]} has finished"
      redirect_to jobs_path
    else
      @handler = YAML.load(@job.handler)
    end
  end

  def delete
  	@job.destroy
  	redirect_to jobs_path
  end

  # GET /jobs/clear
  def clear_prompt
  end

  # POST /jobs/clear
  def clear
  	Delayed::Job.destroy_all
  	redirect_to jobs_path
  end

  private

  	def get_job
    	@job = Delayed::Job.find_by_id params[:id]
  	end

end