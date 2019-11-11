class QuestionsController < ApplicationController
  # def index
  #   @question = params[:question]
  # end

  def ask
  end

  def answer
    @question = params[:question]
    @answer = deal_with_coach(@question)
    # if @question == "I am going to work"
    #   @answer = ""
    # elsif @question.include?("?")
    #   @answer = "Silly question, get dressed and go to work!"
    # else
    #   @answer = "I don't care, get dressed and go to work!"
    # end
  end

  private

  def deal_with_coach(question)
    if question == "I am going to work"
      return ""
    elsif question.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
