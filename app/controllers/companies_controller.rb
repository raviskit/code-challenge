class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def edit
    @company = Company.find(params[:id])
  end

  def create
    @company = Company.new(permit_params)
    if @company.save
      flash[:success] = 'Company added successfully'
      redirect_to @company
    else
      flash[:danger] = @company.errors.full_messages.to_sentence
      render :new, params: permit_params
    end
  end

  def update
    # raise params.inspect
    @company = Company.find(params[:id])
    if @company.update_attributes(permit_params)
      flash[:success] = 'Company updated successfully'
      redirect_to @company
    else
      flash[:danger] = @company.errors.full_messages.to_sentence
      render :edit, params: permit_params
    end
  end

  def destroy
    @company = Company.find(params[:id])
    if @company.destroy
      flash[:success] = 'Company deleted successfully'
      redirect_to companies_path
    else
      flash[:danger] = @company.errors.full_messages.to_sentence
      render :show, params: permit_params
    end
  end

  private

  def permit_params
    params.require(:company).permit(:name, :city, :state, :description, :founded_date, :company_picture, founders_attributes: [:id, :_destroy, :full_name, :title], tags_attributes: [:id, :name, :_destroy])
  end
end
