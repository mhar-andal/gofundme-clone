get '/users/new' do
  erb :'users/register'
end

post '/users' do
  p params
  @user = User.create(params[:user])
end

get '/sessions/new' do
  erb :'users/login'
end

post '/sessions/new' do

end
