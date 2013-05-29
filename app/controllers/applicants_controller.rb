class ApplicantsController < ApplicationController

  def index
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
      #nothing yet
    end
  end

  def show
    @applicant = Applicant.find(params[:id])
  end

end