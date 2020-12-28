require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Check the presence of columns" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:priority) }
  end
  
  describe "Priority should be in a range between 1 and 5" do
    it { should validate_inclusion_of(:priority).in_range(1..5)}
  end

  describe "Name should be unique" do
    it { should validate_uniqueness_of(:name) }
  end
  

  describe 'associations' do
    it { should have_many(:artcats).dependent(:destroy) }  
    it { should have_many(:articles).order('created_at asc').through(:artcats) }  
  end
end