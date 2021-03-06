class ApplicantsController < ApplicationController

  def index
    @applicants = Applicant.all
  end

  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(params[:applicant])
    if @applicant.save
      flash[:notice] = "Applicant has been created."
      redirect_to @applicant
    else
      flash[:alert] = "Applicant has not been created."
      render :action => "new"
    end
  end

  def show
    @applicant = Applicant.find(params[:id])
  end

  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy
    flash[:notice] = "Applicant has been deleted."
    redirect_to applicants_path
  end

end
