settings
========

Activeadmin Dynamic settings

## Getting started

You can add it to your Gemfile with:

```ruby
gem 'settings', gitgub: 'higorae'
```

Run rails generate command to install it  migrations  copy:
```console
rails generate settings:install:migrations
```

Then run:

```console
rake db:migrate
```

That is it!

## Helpers

```ruby
get_field('field_name')
```

```ruby
get_page_title
```

```ruby
get_page_description
```
