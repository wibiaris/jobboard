class JobsController < ApplicationController
	before_action :find_job, only: [:show, :edit, :update, :destroy]

 def index
 	@jobs = Job.all.order("created_at DESC")
 end

 def show
 end

 def new
 	@job = Job.new
 end

 def create
 	@job = Job.new(job_params)

 	if @job.save
 		redirect_to @job
 	else
 		render "New"
 	end

 end

 def edit
 end

 def update
 	if @job.update(job_params)
 		redirect_to @job
 	else
 		render "Edit"
 	end
 end

 def destroy
 	@job.destroy
 	redirect_to root_path
 end

 private
 
 def job_params
 	params.require(:job).permit(:title, :descrtiption, :company, :url)
 end

 def find_job
 	@job = Job.find(params[:id])
 end

end
