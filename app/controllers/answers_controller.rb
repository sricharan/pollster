class AnswersController < ApplicationController

 def create 
  @answer = Answer.new(params[:answer])
  @answer.email = session[:email]
  @answer.poll_id =  session[:poll_id]
  
  @answer.save 
  @poll = Poll.find(session[:poll_id]) 
  if @answer.opt == '1'
    @poll.opt_count1 += 1
  elsif @answer.opt == '2'   
    @poll.opt_count2 += 1 
  elsif @answer.opt == '3' 
    @poll.opt_count3 += 1 
  end 
  @poll.update_attributes :opt_count1 => @poll.opt_count1 , :opt_count2 => @poll.opt_count2 , :opt_count3 => @poll.opt_count3
  redirect_to   :controller => 'polls' ,  :action => 'show_count' , :id => session[:poll_id]  
 end

end
