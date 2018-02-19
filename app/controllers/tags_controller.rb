class TagsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @tag = @company.tags.build
  end

  private

  def tags_params
    params.require(:tag).permit(:name)
  end
end
