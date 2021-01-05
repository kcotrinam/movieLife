require 'rails_helper'

RSpec.describe 'Create a new User', type: :feature do
  before do
    @article = User.create(
      name: 'user1',
      username: 'user1',
      email: 'user1@gmail.com'
    )
    Category.create(
      name: 'Sci-Fi',
      priority: 3
    )
    Article.create(
      author_id: User.first.id,
      title: 'Test Article',
      content: 'description fo the test article',
      cover: 'img1.jpg'
    )
    Artcat.create(
      article_id: Article.first.id,
      category_id: Category.first.id
    )

    Vote.create(
      user_id: User.first.id,
      article_id: Article.first.id
    )
  end

  scenario 'valid inputs' do
    visit sign_up_path
    fill_in 'Name', with: 'UserTest'
    fill_in 'Username', with: 'UserTests'
    fill_in 'Email', with: 'UserTest@test.com'
    click_on 'Create User'

    visit categories_path
    expect(page).to have_content('UserTest')
  end

  scenario 'Invalid blank input' do
    visit sign_up_path
    fill_in 'Name', with: 'UserTest'
    fill_in 'Username', with: ''
    fill_in 'Email', with: 'UserTest@test.com'
    click_on 'Create User'

    expect(page).to have_content("Username can't be blank")
  end
end
