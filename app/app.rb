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

  post '/input_details' do
    p member= Member.create(first_name: params[:first_name],
                        second_name: params[:second_name],
                        email: params[:email],
                        school_id: params[:school_id])
    p school = School.create(school: params[:school],
                           member_id: params[:member_id])
    p MemberSchool.create(:member => member, :school => school)
     redirect '/view_details'
  end

  get '/view_details' do
    p @members = Member.all
    p @schools = School.all

    erb :view_members_details
  end


 run! if app_file == $0
end
# p School.create(school: "Makers", member_id: 5)
#
# p Member.create(first_name: "Chris", second_name: "Lawrence", email: "bob@bob.com", school_id: 7 )
