require 'rails_helper'

RSpec.describe User, type: :model do
  describe "username and name should have at least 3 characters" do
    it { should validate_length_of(:name).is_at_least 3 }
    it { should validate_length_of(:name).is_at_most 30 }
    it { should validate_length_of(:username).is_at_least 3 }
    it { should validate_length_of(:username).is_at_most 30 }
  end
  
  describe "username and name should be filled in" do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:name) }
  end
  
  describe "Username should be unique" do
    it { should validate_uniqueness_of(:username) }
  end

  describe 'associations' do
    it { should have_many(:articles) }
    it { should have_many(:votes) }
  end
end