require 'data_mapper'
require 'dm-postgres-adapter'
require 'spec_helper'

feature 'Viewing input_members_details' do
  scenario 'I can see a field to input a new members name' do
    # Member.create(name: "Katy", email: "katy@email.com")
    # School.create(name: "Makers Academy")
    visit '/input_details'
    expect(page.status_code).to eq 200

    within 'ul#input_members_details' do
      expect(page).to have_content('Add New Members')
    end
  end
end
