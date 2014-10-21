class EssaysController < ApplicationController
  def index
    @essays = Essay.all
  end

  def show
    @essay = Essay.find(params[:id])
  end

  def new
    @essay = Essay.new
  end

  def home
  end

  def about

  end


  def create
    @essay = Essay.new
    @essay.question_1 = params[:question_1]
    @essay.question_2 = params[:question_2]
    @essay.question_3 = params[:question_3]
    @essay.question_4 = params[:question_4]
    @essay.question_5 = params[:question_5]
    @essay.buyer_id = params[:buyer_id]
    @essay.seller_id = params[:seller_id]

    if @essay.save
      redirect_to "/answers/new", :notice => "Essay created successfully."
    else
      render 'new'
    end
  end

  def edit
    @essay = Essay.find(params[:id])
  end

  def update
    @essay = Essay.find(params[:id])

    @essay.question_1 = params[:question_1]
    @essay.question_2 = params[:question_2]
    @essay.question_3 = params[:question_3]
    @essay.question_4 = params[:question_4]
    @essay.question_5 = params[:question_5]
    @essay.buyer_id = params[:buyer_id]
    @essay.seller_id = params[:seller_id]

    if @essay.save
      redirect_to "/essays", :notice => "Essay updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @essay = Essay.find(params[:id])

    @essay.destroy

    redirect_to "/essays", :notice => "Essay deleted."
  end
end
