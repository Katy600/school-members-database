require "data_mapper"
require 'spec_helper'

def database_setup
  DataMapper.setup(:default,"postgres://localhost/members_database_test")
  DataMapper.finalize
  DataMapper.auto_update!
end
