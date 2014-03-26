require 'spec_helper'
require_relative '../app'
require 'capybara/rspec'
Capybara.app = App


feature 'Access and manage homepage' do

  scenario 'hompage displays welcome and link to create a new task' do
  visit '/'
    expect(page).to have_content 'Welcome'
    click_link 'Create Task'
    fill_in 'new_task', :with => 'Exercise'
    click_on 'Create'
    expect(page).to have_content 'Exercise'
  end

end


