if $0 == 'irb'
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  ActiveRecord::Base.clear_active_connections!
end

if RAILS_ENV == 'development'
  require 'pp'
end