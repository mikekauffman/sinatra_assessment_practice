require 'spec_helper'
require_relative '../app'
require 'capybara/rspec'
Capybara.app = App


feature 'Access and manage homepage' do

  scenario 'hompage displays welcome' do
  visit '/'
    expect(page).to have_content "Welcome"
  end

end

