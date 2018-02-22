class TagsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @tag = @company.tags.build
  end
end
