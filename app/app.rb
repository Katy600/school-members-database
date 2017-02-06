require 'rubygems'
require 'sinatra/base'
require_relative "models/data_mapper_setup"
require_relative 'models/members'
require_relative 'models/school'
class SchoolMembersDatabase < Sinatra::Base
  set :sessions, true
p @member = Member.create(name: "Katy", email: "katy@email.com")
  get '/' do
    "Hello"
  end
  # get '/' do
  #   redirect '/input_details'
  # end
  #
  get '/input_details' do
    erb :input_members_details
  end
  # get '/input_details' do
  #   @members = Members.all
  #   erb :input_members_details
  # end
 run! if app_file == $0
end






p @member = Member.create(:name => "Katy",
                        :email => "katy@email.com")




# require_relative 'data_mapper_setup'
