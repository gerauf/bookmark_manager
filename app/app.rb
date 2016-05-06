ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'sinatra/flash'

require_relative 'data_mapper_setup'

require_relative 'server'
require_relative 'controllers/links'
require_relative 'controllers/tags'
require_relative 'controllers/users'
require_relative 'controllers/sessions'


class BookmarkManager < Sinatra::Base

  get '/' do
    redirect :'/users/new'
  end

  run! if app_file == $0
end
