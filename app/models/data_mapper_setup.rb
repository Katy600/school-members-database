require 'data_mapper'


def database_setup
  DataMapper.setup(:default,"postgres://localhost/members_database")
  DataMapper.auto_upgrade!
end
