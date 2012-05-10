require 'spec_helper'

describe UnderscoreTemplateRails::UnderscoreTemplate do
  before { Rails.application.assets.cache = {} }

  it 'compiles templates with the .utmp extension' do
    Rails.configuration.underscore_templates.variable = 'templates'
    template = Rails.application.assets['templates/test']
    template.to_s.should == "templates[\"test\"] = _.template(\"<div class=\\\"test\\\">\\n  <%= test %>\\n<\\/div>\\n\");"
  end

  context 'when config.template_variable is set' do
    it 'sets the variable from the config' do
      Rails.configuration.underscore_templates.variable = 'argon'
      template = Rails.application.assets['templates/test']
      template.to_s.should == "argon[\"test\"] = _.template(\"<div class=\\\"test\\\">\\n  <%= test %>\\n<\\/div>\\n\");"
    end
  end


end
