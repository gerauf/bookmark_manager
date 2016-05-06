class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    link = Link.new(url: params[:url],
    title: params[:title])
    params[:tags].split(" ").each do |each_tag|
      link.tags << Tag.first_or_create(name: each_tag)
    end
    link.save
    redirect :links
  end
end
