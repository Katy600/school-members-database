require_relative '../spec_helper'


feature 'Viewing input_members_details' do
  scenario 'I am able to get my server running' do
    visit '/'
    expect(page.status_code).to eq 200
  end

  scenario 'I am able to go to the page input_details' do
    visit '/input_details'
    expect(page).to have_content('Add New Members')
  end

 scenario "it gives me feedback when I have succesfully added a new member" do
    visit '/input_details'
    fill_in :first_name, with: 'Katy'
    fill_in :second_name, with: 'McCann'
    fill_in :email, with: 'user@example.com'
    fill_in :school, with: 'Makers Academy'
    click_button 'Submit'
    expect(page).to have_content "Add New Members"
   end
end
