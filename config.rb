# Middleman Config
# -----------------

activate :directory_indexes

configure :build do
  activate :minify_html
  activate :minify_css, { ignore: ["/stylesheets/lightbox.css"] }
  activate :minify_javascript
end
