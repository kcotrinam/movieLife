module ArticlesHelper
  def vote_unvote(article)
    # store_location
    @vote = Vote.find_by(user_id: current_user.id, article_id: article.id)

    if @vote
      link_to article_vote_path(article_id: article.id, id: @vote.id), class: 'card__vote', method: :delete do
        raw '<i class="fas fa-thumbs-down fa-thumbs"></i>'
      end
    else
      link_to article_votes_path(article_id: article.id), method: :post do
        raw '<i class="fas fa-thumbs-up fa-thumbs"></i>'
      end
    end
  end

  def display_image(image)
    if image.avatar.attached?
      image.avatar
    else
      image.cover.to_s
    end
  end

  def first_article_category(category)
    first_article = category.articles.first
    if first_article.avatar.atached?
      first_article.avatar
    else
      first_article.cover.to_s
    end
  end
end
