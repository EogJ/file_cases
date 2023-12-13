class CasesController < ApplicationController
  before_action :set_case, only: [:destroy]

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(case_params)
    if @case.save
      redirect_to case_path @case.signed_id expires_in: 20.minutes
    else
      render 'new'
    end
  end

  def show
    @signed_id = params[:id]
  end

  def destroy
    @case.destroy!
    redirect_to root_path
  end

  private

  def set_case
    @case = Case.find_signed(params[:id])
  end

  def case_params
    params.require(:case).permit(files: [])
  end
end
