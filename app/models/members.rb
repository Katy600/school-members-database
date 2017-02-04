require 'data_mapper'
require 'spec_helper'
require_relative 'data_mapper_setup'

class Member
  include DataMapper::Resource

  property :id,    Serial
  property :name,  String
  property :email, String
end
