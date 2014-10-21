class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new
    @answer.answer_1 = params[:answer_1]
    @answer.answer_2 = params[:answer_2]
    @answer.answer_3 = params[:answer_3]
    @answer.answer_4 = params[:answer_4]
    @answer.answer_5 = params[:answer_5]
    @answer.questionnaire_id = params[:questionnaire_id]
    @answer.buyer_id = params[:buyer_id]
    @answer.seller_id = params[:seller_id]
    @answer.comment = params[:comment]

    if @answer.save
      redirect_to "/answers", :notice => "Answer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])

    @answer.answer_1 = params[:answer_1]
    @answer.answer_2 = params[:answer_2]
    @answer.answer_3 = params[:answer_3]
    @answer.answer_4 = params[:answer_4]
    @answer.answer_5 = params[:answer_5]
    @answer.questionnaire_id = params[:questionnaire_id]
    @answer.buyer_id = params[:buyer_id]
    @answer.seller_id = params[:seller_id]
    @answer.comment = params[:comment]

    if @answer.save
      redirect_to "/answers", :notice => "Answer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @answer = Answer.find(params[:id])

    @answer.destroy

    redirect_to "/answers", :notice => "Answer deleted."
  end
end
