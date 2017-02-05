require 'data_mapper'

def database_setup
  DataMapper.setup(:default,"postgres://localhost/members_database_test")
  DataMapper.finalize
  DataMapper.auto_update!
end
