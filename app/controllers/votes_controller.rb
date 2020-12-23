class VotesController < ApplicationController
  def new
  end

  def create
    @vote = Vote.new(article_id: params[:article_id], user_id: current_user.id)

    if @vote.save
      flash[:success] = "Vote successfully created"
    else
      flash[:error] = "Something went wrong"
    end
    redirect_to root_url
  end
  

 def destroy
   @vote = Vote.find_by(article_id: params[:article_id], user_id: current_user.id)
   if @vote.delete
     flash[:success] = 'Vote was successfully deleted.'
   else
     flash[:error] = 'Something went wrong'
    end
    redirect_to root_url
 end
 
  
end
