require 'data_mapper'
require 'spec_helper'
# require 'data_mapper_setup'

class School
  include DataMapper::Resource

  property :id,    Serial
  property :name,  String
end
