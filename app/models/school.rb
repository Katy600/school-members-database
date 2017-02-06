require_relative 'data_mapper_setup'
database_setup

class School
  include DataMapper::Resource

  property :id,    Serial
  property :name,  String
end

DataMapper.finalize
