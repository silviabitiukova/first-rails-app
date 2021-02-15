class QuestionsController < ApplicationController 
  def ask
    
  end
  def answer
    @answers = [ "Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!" ]
    @question = params[:question]
    if @question == "I am going to work"
      @results = @answers[0]
    elsif @question.end_with?("?")
      @results = @answers[1]
    else
      @results = @answers[2]
    end
  end
end
