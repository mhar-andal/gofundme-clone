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
  @user = User.find_by(username: params[:user][:username])
  if @user
    if @user.authenticate(params[:user][:username], params[:user][:password])
      set_user(@user)
      redirect '/'
    else
      @errors = ["Error: Username/Password is incorrect"]
      erb :'/users/login'
    end
  else
    @errors = ["Error: Account '#{params[:user][:username]}' not found"]
    erb :'/users/login'
  end
end

delete '/sessions' do
  session.clear
  redirect '/'
end

get '/users/:id' do

end
