class PollsController < ApplicationController
  
  def index
   
   @polls = []
  # answer= Answer.includes(:poll).where('email <> ?', session[:email]).collect {|answer| answer.poll.id}.uniq.sort
   abc = Answer.where('email = ?' , session[:email]).collect {|abc| abc.poll_id}
   if abc != [] 
   answer = Poll.where("id NOT IN (?)" , abc )
   else
   answer = Poll.all 
   end
    answer.each  do |f| 
     @polls << Poll.find(f) 
  end

  end

  def first_page
   
  end
  
  def new
    @poll = Poll.new 
  end

  def create 
    @poll = Poll.new(params[:poll])
    if @poll.save
      redirect_to :action => 'index'
    else 
      render :action => 'new'
    end
  end

  def show 
   
   @poll = Poll.find(params[:id])
   session[:poll_id] = @poll.id 
   @answer = Answer.new 
  
  end 
  
  def destroy
   Poll.destroy(params[:id])
   render :action => 'index' 
  end

  def enter_email 
    
  end

  def email_in_session
      session[:email] = params[:email]
      redirect_to :action => 'first_page'
  end
   
  def show_count 
  @poll = Poll.find(params[:id]) 
  end  

  def logout 
    session[:email] = nil 
    redirect_to :action => 'enter_email' 

  end


end
