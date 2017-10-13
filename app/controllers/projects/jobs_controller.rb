class Projects::JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project

  def create
   job = @project.jobs.new(job_params)
   job.project = @project

  if job.save
    redirect_to @project, notice: 'Saved!'
  else
    redirect_to @project, alert: 'Failed saving!'
  end
  end

  private
    def set_project
      @project = current_user.projects.find(params[:project_id])
    end

    def job_params
      params.require(:job).permit(:email)
    end

end