require_relative 'gossip'
require_relative 'view'

class Controller
  def create_gossip
    @view = View.new
    params = @view.create_gossip 
    gossip = Gossip.new(params[:author], params[:content])
    # Crée un nouvel objet Gossip et l'assigne à la variable 'gossip'
    gossip.save#demande que le gossip se save dans le csv
  end
  def index_gossip
    all_gossips_array = Gossip.all
    View.new.index_gossip(all_gossips_array) 
  end
  def delete_by_author
    puts "Saisis l'auteur du gossip que tu veux supprimer :"
    author_to_delete = gets.chomp

    all_gossips = Gossip.all
    gossips_to_delete = all_gossips.select { |gossip| gossip.author == author_to_delete }

    if gossips_to_delete.empty?
      puts "Aucun gossip trouvé pour cet auteur."
    else
      gossips_to_delete.each do |gossip|
        all_gossips.delete(gossip)
      end

      # Réécrit le fichier CSV avec la liste mise à jour
      CSV.open("db/gossip.csv", "w") do |csv|
        all_gossips.each do |gossip|
          csv << [gossip.author, gossip.content]
        end
      end

      puts "Les gossips de #{author_to_delete} ont été supprimés avec succès."
    end
  end

end