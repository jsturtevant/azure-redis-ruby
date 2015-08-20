require 'rubygems'
require 'bundler/setup'

require "redis"

print "Hello!\n"
redis = Redis.new(:host => "<your cache name>.redis.cache.windows.net", :port => 6380, :db => 10, :password => "<KEY>", :use_ssl => true)

redis.set "sample", "Goodbye"

value = redis.get "sample"
print value + "\n"
