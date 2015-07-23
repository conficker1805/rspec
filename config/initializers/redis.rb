$redis = Redis.new(host: "localhost", port: 6379, db: 15)
# brew install redis
# Run "redis-server"
# Test in rails c
  # > $redis
  # => #<Redis client v3.2.1 for redis://localhost:6379/15>
  # > $redis.set('name', 'Eovy')
  # => "OK"
  # > $redis.get('name')
  # => "Eovy"
