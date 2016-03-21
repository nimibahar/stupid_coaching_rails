class CoachingController < ApplicationController
  def ask


  end

  def answer
    @user_input = params[:user_input]
    if @user_input.downcase == "I'm going to work right now!"
      @answer = "Good job"
    elsif @user_input.end_with?("?")
      @answer = "Silly Q, get dressed!"
    else
      @answer = "I don't care, go to work!"
    end
  end
end


# def coach_answer(your_message)
#   # TODO: return coach answer to your_message
#   if your_message.downcase == "i am going to work right now!"
#     ""
#   elsif your_message.end_with?("?")
#     "Silly question, get dressed and go to work!"
#   else
#     "I don't care, get dressed and go to work!"
#   end
# end




# def coach_answer_enhanced(your_message)
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
#   answer = coach_answer(your_message)

#   if answer != ""
#     if your_message.casecmp your_message
#       "I can feel your motivation! #{answer}"
#     else
#       answer
#     end
#   else
#     ""
#   end
# end
