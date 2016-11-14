class CoachingController < ApplicationController
  def ask
  end

  def answer
    @question = params[:query]
    @response = coach_answer(@question)
  end

  private

  def coach_answer(your_question)
    if your_question == "I am going to work!"
      return "Good boy!"
    elsif your_question[your_question.length-1].to_s == "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  # def coach_answer_enhanced(question)
  #   if question == question.upcase
  #     puts "I can feel you motivation !"
  #     question = question.downcase.capitalize
  #     puts coach_answer(question)
  #   else
  #     puts coach_answer(question)
  #   end
  # end

end


