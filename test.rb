#!/usr/bin/env ruby

require 'cache-ruby'


class Article < Cache::Object
  database Cache::Database.new(:user => "Admin", :password => "123", :namespace => "User")
  class_name "User.Article"
end

if nil
  @db = Cache::Database.new(:user => "Admin", :password => "123", :namespace => "User")
  

@data = @db.query("insert into articles (name) values ('test name')")
puts "Result: #{@data.inspect}"


@data = @db.query("select * from articles")
puts "Result: #{@data.inspect}"
end

if nil
puts Article.new.instance_variable_get("@class_name")
@a = Article.create
puts @a.class
Article.property("name")
puts Article.new.cache_get("name")
end


if true
  @a = Article.open(21)
  puts @a.cache_get(:name)
  @a.cache_set(:name, "Anni Fyo")
  @a.cache_call("%Save")
  @a = Article.open(21)
  puts @a.cache_get("name")
end