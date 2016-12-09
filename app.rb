require 'sinatra'
require 'better_errors'
require "./lib/ahorcado_musical"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
  session["ahorcadoMusical"] = AhorcadoMusical.new
	erb :index
end

post '/validarLetraIngresada' do
  letra=params["LetraBuscar"]
  session["ahorcadoMusical"].validacionLetra letra
	erb :index
end