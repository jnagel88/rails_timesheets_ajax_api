require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it "can be reached successfully" do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it 'has title of Posts' do
      visit posts_path
      expect(page).to have_content(/Posts/)
    end
  end

  describe 'creation' do
    before { visit new_post_path }
    it 'has a new form that can be reached' do
      expect(page.status_code).to eq(200)
    end
    
    it 'can be created from new form page' do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: 'rationale test'
      
      click_on 'Save'
      
      expect(page).to have_content('rationale test') 
    end
  end

end