require "compass"
require "susy"

# Haml 5 is _noisy_ for a internal middleman things I don't care about.
Haml::TempleEngine.disable_option_validator!

activate :automatic_image_sizes
activate :directory_indexes

set :css_dir,    "stylesheets"
set :js_dir,     "javascripts"
set :images_dir, "images"

# Build-specific configuration
configure :build do
	activate :minify_css
	activate :minify_javascript
end
