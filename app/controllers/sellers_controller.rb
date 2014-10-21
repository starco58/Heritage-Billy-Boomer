class SellersController < ApplicationController
  def index
    @sellers = Seller.all
  end

  def show
    @seller = Seller.find(params[:id])
  end

  def new
    @seller = Seller.new
  end

  def create
    @seller = Seller.new
    @seller.seller_id = params[:seller_id]
    @seller.image_url = params[:image_url]
    @seller.seller_username = params[:seller_username]
    @seller.seller_first_name = params[:seller_first_name]
    @seller.seller_last_name = params[:seller_last_name]
    @seller.seller_email = params[:seller_email]
    @seller.seller_birthdate = params[:seller_birthdate]
    @seller.seller_level_of_education = params[:seller_level_of_education]
    @seller.seller_industry = params[:seller_industry]
    @seller.seller_marital_status = params[:seller_marital_status]
    @seller.seller_children = params[:seller_children]

    if @seller.save
      redirect_to "/sellers", :notice => "Seller created successfully."
    else
      render 'new'
    end
  end

  def edit
    @seller = Seller.find(params[:id])
  end

  def update
    @seller = Seller.find(params[:id])

    @seller.seller_id = params[:seller_id]
    @seller.image_url = params[:image_url]
    @seller.seller_username = params[:seller_username]
    @seller.seller_first_name = params[:seller_first_name]
    @seller.seller_last_name = params[:seller_last_name]
    @seller.seller_email = params[:seller_email]
    @seller.seller_birthdate = params[:seller_birthdate]
    @seller.seller_level_of_education = params[:seller_level_of_education]
    @seller.seller_industry = params[:seller_industry]
    @seller.seller_marital_status = params[:seller_marital_status]
    @seller.seller_children = params[:seller_children]

    if @seller.save
      redirect_to "/sellers", :notice => "Seller updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @seller = Seller.find(params[:id])

    @seller.destroy

    redirect_to "/sellers", :notice => "Seller deleted."
  end
end
