class FoundersController < ApplicationController

  def new
    @company = Company.find(params[:company_id])
    @founder = @company.founders.build
  end
end
