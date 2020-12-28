require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Title and content should have at least 3 characters' do
    it { should validate_length_of(:title).is_at_least 3 }
    it { should validate_length_of(:content).is_at_least 10 }
  end

  describe 'Check the presence of columns' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
  end

  describe 'associations' do
    it { should have_many(:votes) }
    it { should have_many(:artcats).dependent(:destroy) }
    it { should have_many(:categories).through(:artcats) }
    it {
      should belong_to(:author).class_name('User')
        .with_foreign_key('author_id')
    }
  end
end
