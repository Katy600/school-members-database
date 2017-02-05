require 'rubygems'
require 'sinatra/base'
require_relative "models/data_mapper_setup"
require_relative 'models/members'
require_relative 'models/school'

class SchoolMembersDatabase < Sinatra::Base
  set :sessions, true
  run! if app_file == $0

  get '/' do
    "hello"
  end
  # get '/' do
  #   redirect '/input_details'
  # end
  #
  get '/input_details' do
    'Add New Members'
  end
  # get '/input_details' do
  #   @members = Members.all
  #   erb :input_members_details
  # end

end
