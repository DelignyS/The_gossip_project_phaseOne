require_relative 'gossip'
require_relative 'view'

class Controller
  def create_gossip
    @view = View.new
    params = @view.create_gossip 
    gossip = Gossip.new("Jean-Michel Concierge", "Féfé est de Bordeaux")
    # Crée un nouvel objet Gossip et l'assigne à la variable 'gossip'
    gossip.save#demande que le gossip se save dans le csv
  end
end