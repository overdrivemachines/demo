# README

Demo Blog.
Source: https://www.youtube.com/watch?v=mpWFrUwAN88

Things you may want to cover:

# Ruby version
ruby 3.1.1p18 (2022-02-18 revision 53f5fc4236) [x86_64-linux]
Rails 7.0.2.2

# Steps

- $ rails new demo
- $ rails g scaffold post title:string content:text
  $ rails db:migrate
- Add simple CSS in application.html.erb
  ```html
  <link rel="stylesheet" href="https://cdn.simplecss.org/simple.min.css">
  ```
- Install Action Text:
 Add `gem 'image_processing', '~> 1.2'` to Gemfile
 $ rails action_text:install
 $ bundle
 $ rails db:migrate
 Add `has_rich_text :content` to post.rb
 Add `form.rich_text_area :content` to \_form.html.erb

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
