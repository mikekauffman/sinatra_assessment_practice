require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'user manages the homepage' do

  scenario 'user visits the homepage and sees Welcome' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end