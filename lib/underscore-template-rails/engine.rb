require 'active_support/ordered_options'

module UnderscoreTemplateRails
  class Railtie < Rails::Engine
    config.underscore_templates = ActiveSupport::OrderedOptions.new
    config.underscore_templates.variable = 'templates'

    initializer 'sprockets.underscore_templates', :after => 'sprockets.environment', :group => :all do |app|
      next unless app.assets
      app.assets.register_engine('.jst', UnderscoreTemplate)
    end
  end
end
