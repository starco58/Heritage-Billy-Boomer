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

  def create
    @company = Company.new
    @company.company_id = params[:company_id]
    @company.company_name = params[:company_name]
    @company.company_industry = params[:company_industry]
    @company.company_number_of_employees = params[:company_number_of_employees]
    @company.company_taxid = params[:company_taxid]
    @company.company_revenue_current_year = params[:company_revenue_current_year]
    @company.company_revenue_last_year = params[:company_revenue_last_year]
    @company.company_revenue_2_year = params[:company_revenue_2_year]
    @company.company_EBITDA = params[:company_EBITDA]
    @company.company_years_in_business = params[:company_years_in_business]
    @company.seller_id = params[:seller_id]

    if @company.save
      redirect_to "/companies", :notice => "Company created successfully."
    else
      render 'new'
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])

    @company.company_id = params[:company_id]
    @company.company_name = params[:company_name]
    @company.company_industry = params[:company_industry]
    @company.company_number_of_employees = params[:company_number_of_employees]
    @company.company_taxid = params[:company_taxid]
    @company.company_revenue_current_year = params[:company_revenue_current_year]
    @company.company_revenue_last_year = params[:company_revenue_last_year]
    @company.company_revenue_2_year = params[:company_revenue_2_year]
    @company.company_EBITDA = params[:company_EBITDA]
    @company.company_years_in_business = params[:company_years_in_business]
    @company.seller_id = params[:seller_id]

    if @company.save
      redirect_to "/companies", :notice => "Company updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @company = Company.find(params[:id])

    @company.destroy

    redirect_to "/companies", :notice => "Company deleted."
  end
end
