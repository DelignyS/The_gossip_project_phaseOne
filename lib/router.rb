require_relative 'controller'

class Router
#rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def initialize
    @controller = Controller.new #créer une instance de controller si Router.new est appelé dans app.rb
  end
  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true
      #on affiche le menu
      puts "Tu veux faire quoi jeune mouss' ?"
      puts "1\. Je veux créer un gossip"
      puts "2\. Afficher tout les potins"
      puts "3\. Supprimer un potin"
      puts "4\. Je veux quitter l'app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur
      case params #en fonction du choix
      when 1
        puts "Tu as choisi de créer un gossip"
        @controller.create_gossip
      when 2
        puts "Tu a choisis de deterrer des vieux dossiers"
        @controller.index_gossip
      when 3
        puts "Tu as choisis de supprimer un potin"
        @controller.delete_by_author
      when 4
        puts "A bientôt !"
        break #ce break permet de sortir de la boucle while, c'est même la seule façon d'en sortir 
      else 
        puts "Ce choix n'existe pas, merci de ressayer" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true".
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end