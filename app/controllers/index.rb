enable :sessions #habilita el uso del hash sessions

get '/' do


  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/login' do

  user = User.find_or_create_by(params[:user])


  if User.authenticate(user.email, user.password_digest) == nil 
    
    @exist = false
    erb :login
  else
    session[:name] = user["name"]
    @exist = true
    erb :login

  end


end


get '/login' do 
  erb :login

end