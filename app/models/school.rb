require 'data_mapper'
class School
  include DataMapper::Resource

  property :id,         Serial
  property :school,     String
  property :member_id,  Integer


  has n, :members, :through => Resource
end
