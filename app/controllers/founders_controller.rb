class FoundersController < ApplicationController

  def new
    @company = Company.find(params[:company_id])
    @founder = @company.founders.build
  end

  private

  def founders_params
    params.require(:founder).permit(:full_name, :title)
  end
end
