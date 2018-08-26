require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Creation' do
    before { @user = User.create(email:'test@test.com', password:"asdasd", first_name: "Jon", last_name:"Snow") }

    it 'Can be created' do

      expect(@user).to be_valid
    end

    it "cannot be created without first or last names" do
      @user.first_name = nil
      @user.last_name = nil

      expect(@user).to_not be_valid
    end

    describe 'custom name method' do
      it 'has a fullname method that combines first and last names' do
        expect(@user.full_name).to eq("SNOW, JON")
      end
    end
  end
end
