# require 'rubygems'
# require 'sinatra/base'
# require_relative "models/data_mapper_setup"
# require_relative 'models/members'
# require_relative 'models/school'
# class SchoolMembersDatabase < Sinatra::Base
#   set :sessions, true
#   p @member = Member.new
# # p @member = Member.create(name: "Katy", email: "katy@email.com")
#   get '/' do
#     "Hello"
#   end
#   # get '/' do
#   #   redirect '/input_details'
#   # end
#   #
#   get '/input_details' do
#     # erb :input_members_details
#   end
#   # get '/input_details' do
#   #   @members = Members.all
#   #   erb :input_members_details
#   # end
#  run! if app_file == $0
# end
# require  'dm-migrations'
# require 'rubygems'
require 'data_mapper'


# require  'dm-migrations'
# def database_setup
  # DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, 'postgres://localhost/members_database')
  #  DataMapper.setup(:default, 'postgres://user:10Lonsdale@katymcann/members_database')
  DataMapper.auto_upgrade!
# end

class Member
  include DataMapper::Resource

  property :id,    Serial
  property :name,  String
  property :email, String
end
DataMapper.finalize

p @member = Member.create(:name => "Katy",
                        :email => "katy@email.com")




# require_relative 'data_mapper_setup'
