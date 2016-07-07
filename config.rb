require 'extensions/build_cleaner'
require 'lib/icon_helper'

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
set :relative_links, true
activate :directory_indexes
activate :i18n, mount_at_root: :false

# Deployment configuration
activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
helpers IconHelper
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  activate :relative_assets
  activate :build_cleaner
end
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
