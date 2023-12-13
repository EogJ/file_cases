class UnboltsController < ApplicationController
  before_action :set_case

  def show; end

  private

  def set_case
    @case = Case.find_signed(params[:id])
  end
end

