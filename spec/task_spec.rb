require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'user manages the homepage' do

  scenario 'user visits the homepage, clicks add a task, enters a task and sees it on the homepage' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_link 'Add a Task'
    fill_in 'new_task', :with => 'Go for a run'
    click_on 'Create Task'
    expect(page).to have_content 'Go for a run'
    expect(page).to have_content 'Welcome'
  end
end