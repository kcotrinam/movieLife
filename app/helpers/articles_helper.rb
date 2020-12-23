module ArticlesHelper

  def vote_unvote(article)
    # store_location
    @vote = Vote.find_by(user_id: current_user.id, article_id: article.id)

    if @vote
      link_to 'unvote', article_vote_path(article_id: article.id, id: @vote.id), method: :delete
    else
      link_to 'vote', article_votes_path(article_id: article.id), method: :post
    end
  end
  
end
