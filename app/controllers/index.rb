get '/' do
  @posts = Campaign.limit(10)
  # Look in app/views/index.erb
  erb :index
end
