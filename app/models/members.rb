class Member
  include DataMapper::Resource

  property :id,    Serial
  property :name,  String
  property :email, String
end

# @member = Member.create(name: "Katy", email: "katy@email.com")
# @members = Member.new
# puts @members.inspect
