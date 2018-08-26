require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Creation' do
      before do
        user = User.create(email:'test@test.com', password:"asdasd", first_name: "Jon", last_name:"Snow")
        @post = Post.create(date: Date.today, rationale: 'some rationale here.', user: user)
      end

    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created without date and rationale' do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end


end

