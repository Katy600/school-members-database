require 'rubygems'
require 'sinatra/base'
require 'data_mapper'
require_relative "models/data_mapper_setup"
require_relative 'models/members'
require_relative 'models/school'

class SchoolMembersDatabase < Sinatra::Base
  set :sessions, true
  database_setup

  get '/' do
    redirect '/input_details'
  end

  get '/input_details' do
    erb :submit_members_details
  end

  get '/input_details/new' do
    erb :input_members_details
  end



# link them by creating the join resource directly

  # get '/view_details' do
  #   @members = Members.all
  #   @school = School.all
  #   erb :view_members_details
  # end
 run! if app_file == $0
end


p Member.create(first_name: "Chris", second_name: "Lawrence", email: "bob@bob.com", school: "Makers" )
