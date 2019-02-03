# Middleman Config
# -----------------

activate :directory_indexes

configure :build do
  activate :minify_css
  activate :minify_javascript
end
