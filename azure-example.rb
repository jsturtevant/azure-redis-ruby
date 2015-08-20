require 'rubygems'
require 'bundler/setup'

require "redis"

print "Hello!\n"
redis = Redis.new(:host => "jstur.redis.cache.windows.net", :port => 6380, :db => 10, :password => "acidyHTxYc+jZCSeleV8pjUDEe78L2fFqpo4gZ0u5EI=", :use_ssl => true)

redis.set "sample", "Goodbye"

value = redis.get "sample"
print value + "\n"
