require 'csv'
require 'pry'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv", "a+") do |stored|
      stored << [@author, @content] 
    end
  end
  def self.all

    all_gossips_array = []

    CSV.foreach("db/gossip.csv") do |ligne_de_gossip| 
        #itère sur chachune des lignes du fichier CSV qui deviennent ligne_de gossip
        gossip_provisoire = Gossip.new(ligne_de_gossip[0], ligne_de_gossip[1])
        #crée un objet gossip avec l'index 0 (auteur) ensuite l'index 1 de ligne de gossip (contenu)
        all_gossips_array << gossip_provisoire
        
    end
    return all_gossips_array
  end
end

#binding.pry
