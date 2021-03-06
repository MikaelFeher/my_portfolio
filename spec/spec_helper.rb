require 'rspec'
require 'capybara/rspec'
require 'capybara/poltergeist'

require 'middleman-core'
require 'middleman-core/rack'
require 'middleman-livereload'
require 'middleman-deploy'
require 'middleman-sprockets'

middleman_app = ::Middleman::Application.new
Capybara.javascript_driver = :poltergeist

Capybara.app = ::Middleman::Rack.new(middleman_app).to_app do
  set :root, File.expand_path(File.join(File.dirname(__FILE__), '..'))
  set :environment, :development
  set :show_exceptions, false
end
