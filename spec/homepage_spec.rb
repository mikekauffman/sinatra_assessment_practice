require_relative '../app'
require 'capybara/rspec'
require 'spec_helper'

Capybara.app = App

feature 'User visits the homepage' do
  scenario 'User clicks a link Add a Task' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_link 'Add a Task'
    fill_in 'create_task', :with => 'Exercise'
    click_on 'Create Task'
    expect(page).to have_content 'Welcome'
    expect(page).to have_content 'Exercise'
  end
end