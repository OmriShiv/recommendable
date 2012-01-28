require "redis"
require "resque"
require "resque-loner"

# What class will be liking/disliking objects and receiving recommendations?
Recommendable.user_class = "<%= user_class %>"

# Recommendable requires a connection to a running redis-server. Either create
# a new instance based on a host/port or UNIX socket, or pass in an existing
# Redis client instance.
<% if options.redis_socket %># <% end %>Recommendable.redis = Redis.new(:host => "<%= redis_host %>", :port => <%= redis_port %>)

# Connect to Redis via a UNIX socket instead
<% unless options.redis_socket %># <% end %>Recommendable.redis = Redis.new(:sock => "<%= options.redis_socket %>")

# Tell Redis which database to use (usually between 0 and 15). The default of 0
# is most likely okay unless you have another application using that database.
Recommendable.redis.select "0"