require 'rubygems'
require 'sinatra'

get '/' do
	#-----------------------------------------------------------------------
	#get, on demande au serveur correspondant à l'url saisi (au dernier slash)
	#Puis on appel erb :form (fichier form.erb) qui est dans le dossier views
	#-----------------------------------------------------------------------
  	erb :form
end

post '/' do
	#-------------------------------------------------------------------------------
	#post, on envoi des données au serveur correspondant à l'url saisi (au dernier slash)
	#Dans form.erb, les variables first_name et last_name ouvre des champs de saisie
	#Dans la ligne ci-dessous, on récupére les valeurs saisie et les stocks dans une variable
	#Les deux façons ci-dessous de passer les paramètres fonctionnent (avec et sans le post en lien avec form.erb)
	#-------------------------------------------------------------------------------
	@name = "#{params[:first_name]} #{params[:post][:last_name]}"

	#-------------------------------------------------------------------------------
	#deuxième essai en passant une autre variable à hello.erb
	#-------------------------------------------------------------------------------
	@title = "Hello #{@name}"

	#------------------------------------------------------------------------------
	#on appel le fichier hello.erb qui est dans le dossier views et qui va utiliser
	#les variables @name et @title pour les afficher dans le navigateur
	#------------------------------------------------------------------------------
	erb :hello

end