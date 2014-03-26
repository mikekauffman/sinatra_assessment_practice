require 'spec_helper'
require_relative '../app'
require 'capybara/rspec'
Capybara.app = App


feature 'Access and manage homepage' do

  scenario 'hompage displays welcome and new tasks can be added to the list' do
  visit '/'
    expect(page).to have_content 'Welcome'
    click_link 'Add a Task'
    fill_in 'new_task', :with => 'Exercise'
    click_on 'Create Task'
    expect(page).to have_content 'Exercise'
  end

end


