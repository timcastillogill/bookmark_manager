require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
  
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/view'
  end

  get '/addbookmark' do
    erb(:'bookmarks/addbookmark')
  end

  post '/addingbookmark' do
    Bookmark.new_bookmark(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
