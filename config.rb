require "susy"

activate :automatic_image_sizes
activate :directory_indexes

set :css_dir,    "stylesheets"
set :js_dir,     "javascripts"
set :images_dir, "images"

set :haml, { ugly: true }

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.host   = 'edge01'
  deploy.path   = '/srv/www/localyokals.ca'
  deploy.user   = 'deploy'
  deploy.clean  = true
end

# Build-specific configuration
configure :build do
	activate :minify_css
	activate :minify_javascript
end
