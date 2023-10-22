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
end