enable :sessions #habilita el uso del hash sessions

get '/' do


  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

get '/signup' do
  redirect to ('/')
end

post '/signup' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect to("/users/#{user.id}")
  end
end

post '/login' do

  user = params[:user]
  p "*" * 50
  p user
  p user["email"]
  p user["password"]

  user = User.authenticate(user["email"], user["password"])
  if user != nil 
    session[:user_id] = user.id
    redirect to("/users/#{user.id}")
  end

end


get '/login' do 
  erb :login

end


get '/users/:id' do
  erb :profile
end

get '/logout' do
  session.clear
  redirect to('/')
end