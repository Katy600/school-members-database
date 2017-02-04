require 'rubygems'
require 'sinatra/base'
require_relative "models/data_mapper_setup"
require_relative 'models/members'
require_relative 'models/school'
require 'spec_helper'

class SchoolMembersDatabase < Sinatra::Base
  set :sessions, true

  get '/' do
    redirect '/input_details'
  end

  get '/input_details' do
    @members = Members.all
    erb :input_members_details
  end

end
