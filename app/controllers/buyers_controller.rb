class BuyersController < ApplicationController
  def index
    @buyers = Buyer.all

  end

  def show
    @buyer = Buyer.find(params[:id])
  end

  def new
    @buyer = Buyer.new
  end

  def create
    @buyer = Buyer.new
    @buyer.image_url = params[:image_url]
    @buyer.buyer_id = params[:buyer_id]
    @buyer.buyer_username = params[:buyer_username]
    @buyer.buyer_first_name = params[:buyer_first_name]
    @buyer.buyer_last_name = params[:buyer_last_name]
    @buyer.buyer_email = params[:buyer_email]
    @buyer.buyer_net_worth = params[:buyer_net_worth]
    @buyer.buyer_birthdate = params[:buyer_birthdate]
    @buyer.buyer_level_of_education = params[:buyer_level_of_education]
    @buyer.buyer_preferred_industry = params[:buyer_preferred_industry]
    @buyer.buyer_marital_status = params[:buyer_marital_status]

    if @buyer.save
      redirect_to "/essays/new", :notice => "Buyer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @buyer = Buyer.find(params[:id])
  end

  def update
    @buyer = Buyer.find(params[:id])

    @buyer.image_url = params[:image_url]
    @buyer.buyer_id = params[:buyer_id]
    @buyer.buyer_username = params[:buyer_username]
    @buyer.buyer_first_name = params[:buyer_first_name]
    @buyer.buyer_last_name = params[:buyer_last_name]
    @buyer.buyer_email = params[:buyer_email]
    @buyer.buyer_net_worth = params[:buyer_net_worth]
    @buyer.buyer_birthdate = params[:buyer_birthdate]
    @buyer.buyer_level_of_education = params[:buyer_level_of_education]
    @buyer.buyer_preferred_industry = params[:buyer_preferred_industry]
    @buyer.buyer_marital_status = params[:buyer_marital_status]

    if @buyer.save
      redirect_to "/buyers", :notice => "Buyer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @buyer = Buyer.find(params[:id])

    @buyer.destroy

    redirect_to "/buyers", :notice => "Buyer deleted."
  end
end
