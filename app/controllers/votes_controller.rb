class VotesController < ApplicationController
  before_action :authenticate_user!

  def new; end

  def create
    @vote = current_user.votes.new(article_id: params[:article_id])

    if @vote.save
      flash[:success] = 'Vote successfully created'
    else
      flash[:error] = 'Something went wrong'
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
