source "https://rubygems.org/"

gem "middleman"
gem "middleman-minify-html"
gem "liquid"

group :ci do
  # Limitations in Drone mean we can't build a custom Docker image, so we need
  # to find an alternative way to get an execjs runtime... Hopefully this is
  # fine.
  gem "therubyracer"
end
