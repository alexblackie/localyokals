require "susy"

activate :dotenv
activate :automatic_image_sizes
activate :directory_indexes

set :css_dir,    "stylesheets"
set :js_dir,     "javascripts"
set :images_dir, "images"

set :haml, { ugly: true }

# Activate sync extension
activate :sync do |sync|
	sync.fog_provider          = "AWS"
	sync.fog_directory         = ENV["AWS_BUCKET"]
	sync.fog_region            = ENV["AWS_REGION"]
	sync.aws_access_key_id     = ENV["AWS_ACCESS"]
	sync.aws_secret_access_key = ENV["AWS_SECRET"]
	sync.existing_remote_files = "delete"
	sync.after_build           = false
end

activate :cloudfront do |cf|
  cf.access_key_id     = ENV["AWS_ACCESS"]
  cf.secret_access_key = ENV["AWS_SECRET"]
  cf.distribution_id   = ENV["AWS_CFDIST"]
  cf.after_build       = false
end

# Build-specific configuration
configure :build do
	activate :minify_css
	activate :minify_javascript
end
