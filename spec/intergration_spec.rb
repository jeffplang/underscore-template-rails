require 'spec_helper'

feature 'Using underscore-template-rails', :js => true do
  before do
    Rails.application.config.underscore_templates.variable = 'templates'
    Rails.application.assets.cache = {}
  end

  scenario 'Loading a page using an Underscore template' do
    visit '/'
    page.should have_content('Jimmy')
  end

  scenario 'Using a t as variable for templates', :js => true do
    Rails.application.config.underscore_templates.variable = 'argon'
    visit '/variable'
    page.should have_content('Roger')
  end

end
