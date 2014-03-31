require_relative '../app'
require 'capybara/rspec'
require 'spec_helper'

Capybara.app = App

feature 'User visits the homepage' do
  scenario 'Welcome displays on the homepage' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end