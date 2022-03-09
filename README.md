# README

Demo Blog.
Source: https://www.youtube.com/watch?v=mpWFrUwAN88

Things you may want to cover:

# Ruby version
ruby 3.1.1p18 (2022-02-18 revision 53f5fc4236) [x86_64-linux]
Rails 7.0.2.2

# Steps

- $ rails new demo <br>
- $ rails g scaffold post title:string content:text <br>
  $ rails db:migrate <br>
- Add simple CSS in application.html.erb <br>
  ```html
  <link rel="stylesheet" href="https://cdn.simplecss.org/simple.min.css">
  ```
- Install Action Text <br>
  Add `gem 'image_processing', '~> 1.2'` to Gemfile <br>
  $ rails action_text:install <br>
  $ bundle <br>
  $ rails db:migrate <br>
  Add `has_rich_text :content` to post.rb <br>
  Add `form.rich_text_area :content` to \_form.html.erb <br>

- Add JavaScript <br>
  Link: https://www.npmjs.com/package/local-time <br>
  $ ./bin/importmap pin local-time <br>
  In `application.js` add the following lines:
  ```js
  import LocalTime from "local-time"
  LocalTime.start()
  ```
  In `_post.html.erb` add the following lines:
  ```erb
  Posted <%= time_tag post.created_at, "data-local": "time-ago" %>
  ```
- Download JavaScript <br>
  $ ./bin/importmap pin local-time --download <br>
  It will download it to /vendor/javascript/local-time.js

- Add Comment <br>
  $ rails g resource comment post:references content:text <br>

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
