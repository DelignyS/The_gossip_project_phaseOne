require_relative 'controller'
require_relative 'router'

class View

    def create_gossip
      params = {}
      puts "Quel est le potin"
      print ">"
      params[:author] = gets.chomp
      puts "Dis nous tout"
      print ">"
      params[:content] = gets.chomp
      return params
    end
    def index_gossip(gossips)
      gossips.each do |displayed_gossip|
        puts displayed_gossip.author
        puts displayed_gossip.content
      end
    end
  end
