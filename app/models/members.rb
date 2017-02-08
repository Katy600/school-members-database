require 'data_mapper'
class Member
  include DataMapper::Resource

  property :id,            Serial
  property :first_name,    String
  property :second_name,   String
  property :email,         String
  property :school_id,     Integer

  has n, :schools, :through => Resource
end
