# frozen_string_literal: true

class QuestionsController < ApplicationController # :nodoc:
  def ask
  end

  def answer
    @question = params[:questions]
    if params[:questions].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:questions] == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
