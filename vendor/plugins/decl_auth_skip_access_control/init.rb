gem "authlogic", '>= 2.1.5'
gem "declarative_authorization", '>= 0.4.1'

require 'declarative_authorization/maintenance'
require File.expand_path(File.dirname(__FILE__) + '/lib/decl_auth_skip_access_control')
