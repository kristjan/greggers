require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Greggers
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.action_view.javascript_expansions[:defaults] = [
      "https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js",
      "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js"
    ]
  end
end
