# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
in this project i have used active admin command 
 rails new project_name -d=postgresql 
 rails g active_admin:install --skip-users
 rails db:create 
 rails generate scaffold Product name:string description:text image:string
 rails g active_admin:resource product
 gem 'carrierwave', '~> 2.2'   t allows you to upload files, store them on different services (like local filesystem, Amazon S3, Google Cloud Storage, etc.), and manipulate uploaded files.

 gem 'mini_magick', '~> 4.11'  MiniMagick is a Ruby wrapper for the ImageMagick and GraphicsMagick command-line tools. It provides a convenient way to perform image manipulation tasks, such as resizing, cropping, rotating, and applying filters, directly from Ruby code. Key features of MiniMagick include:

 bundle install
 rails generate uploader Image

 rails s
 

---------********-----------
to solve error this error  public_send("authorizable_#{method}")
          else
            raise <<~MESSAGE
              Ransack needs #{name} #{list_type} explicitly allowlisted as
              searchable. Define a `#{method}` class method in your `#{name}`
              model, watching out for items you DON'T want searchable (fo
apply line on aplication_record.rb 
     def self.ransackable_attributes(auth_object = nil)
    column_names + _ransackers.keys
     end
