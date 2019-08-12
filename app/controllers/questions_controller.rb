class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
      if @question == 'I am going to work right now!'
        @answer = 'great!'
      elsif @question.include?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = 'I do not care, get dressed and go to work!'
      end
  end
end
