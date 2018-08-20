# Using

* Ruby 2.5.0
* Rails 5.1
* AngularJs 1.5.8

# Run
```
gem install bundler
bundle install
rails s
```

# TODO
Since all of the image URLs are from `rickandmortyapi.com`, the filter will include everything if you try and search by `morty` or `rick`. For this reason, images are left out for the time being. Its possible in the future to download and cache these images either locally on the system or upload them to my own third party solution mainly so the URL doesn't include the main 2 character's names.