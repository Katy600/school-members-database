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

  # scenario 'I can see a field to input a new members name' do
  #   # Member.create(name: "Katy", email: "katy@email.com")
  #   # School.create(name: "Makers Academy")
  #
  #
  #   within 'ul#input_members_details' do
  #     expect(page).to have_content('Add New Members')
  #   end
  # end
end
