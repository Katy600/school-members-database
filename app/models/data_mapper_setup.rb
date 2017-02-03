require "data_mapper"

def database_setup
  DataMapper.setup(:default,"postgres://localhost/members_database")
  DataMapper.finalize
  DataMapper.auto_migrate!
end
