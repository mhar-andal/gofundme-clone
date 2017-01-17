get '/users/new' do

  erb :'users/register'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    set_user(@user)
    redirect '/'
  end
end

get '/sessions/new' do
  erb :'users/login'
end

post '/sessions' do

end

delete '/sessions' do

end

get '/users/:id' do

end
