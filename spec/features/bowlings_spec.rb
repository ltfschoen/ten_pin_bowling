require 'capybara/rspec'
require 'spec_helper'

describe 'as a user visiting the bowling page', type: :feature, feature: true, js: true do

  let(:hostname) { 'localhost:3000' }

  before :each do
    visit "http://#{hostname}/bowlings"
    expect(page).to have_content 'Ten Pin Bowling Score'
  end

  it 'should display score of 300 for rolls 10 10 10 10 10 10 10 10 10 10 10 10' do
    expect(page).to have_content '10 101 10 10 10 10 10 10 10 10 10 10'
    expect(page).to have_content '300'
  end

end