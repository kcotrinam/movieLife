  
require 'rails_helper'

RSpec.describe 'Create a new User', type: :feature do
  before do
    User.create(
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
      title: "Test Article",
      content: "description fo the test article",
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
    visit sign_in_path
    fill_in 'Username', with: 'user1'
    click_on 'log in'
    visit categories_path
    click_on 'New Article'
    fill_in "Title",	with: "New title"
    fill_in "Content",	with: "This is the new content test of the new article created" 
    click_on 'Create Article'
    visit categories_path

    expect(page).to have_content('New title')
  end
  
  scenario 'invalid content' do
    visit sign_in_path
    fill_in 'Username', with: 'user1'
    click_on 'log in'
    visit categories_path
    click_on 'New Article'
    fill_in "Title",	with: "New title"
    fill_in "Content",	with: "" 
    click_on 'Create Article'

    expect(page).to have_content("Content can't be blank")
  end
  
  scenario 'invalid title' do
    visit sign_in_path
    fill_in 'Username', with: 'user1'
    click_on 'log in'
    visit categories_path
    click_on 'New Article'
    fill_in "Title",	with: ""
    fill_in "Content",	with: "This is the new content test for the new title" 
    click_on 'Create Article'

    expect(page).to have_content("Title can't be blank")
  end

  scenario 'User not loged in' do
    visit categories_path
    click_on 'New Article'
    visit sign_in_path

    expect(page).to have_content("Username")
  end
  
end
