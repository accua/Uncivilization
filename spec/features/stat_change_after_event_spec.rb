require 'rails_helper'

describe 'the stat-change after event' do
    before() do
      user = create(:user)
      visit new_user_session_path
      fill_in 'Email', :with => 'email@email.com'
      fill_in 'Password', :with => '123456'
      click_on 'Log in'
      event = create(:event)
      nation = create(:nation)
      response = create(:response1)
      response = create(:response2)
      response = create(:response3)
    end
    it "changes the stats on the footer", js: true do
    visit '/'
    click_on 'View All Games'
    click_on 'test'
    click_on 'start_game'
    expect(page).to have_content 'Through hardwork and innovation'
    choose 'response_1'
    click_on 'Save changes'
    expect(page).to have_content 'Stability: 58'
  end
end
