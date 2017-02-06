require_relative 'data_mapper_setup'
require 'data_mapper'
require  'dm-migrations'
database_setup

class Member
  include DataMapper::Resource

  property :id,    Serial
  property :name,  String
  property :email, String
end

DataMapper.finalize
