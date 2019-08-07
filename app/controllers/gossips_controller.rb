class GossipsController < ApplicationController

  def index
    @gossips = Gossip.all
    
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end

  def show
    @gossip = Gossip.find(params[:id])
   # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  end

  def new
    @gossip = Gossip.new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
     @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: User.find_by_first_name('Anonymous').id) # On trouve l'id_user de anonymous qui est cree avec db:seed automatiquement

  if @gossip.save # essaie de sauvegarder en base @gossip
    flash[:success] = 'The Gossip was successfully created'
    redirect_to gossips_path # si ça marche, il redirige vers la page d'index du site
  else
    render :new# sinon, il render la view new (qui est celle sur laquelle on est déjà)
  end
  
  end

  def edit
    @gossip = Gossip.find(params[:id]) # On trouve l'id_user de anonymous qui est cree avec db:seed automatiquement

  # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
  @gossip = Gossip.find(params[:id])
  if @gossip.update(gossip_params)
    flash[:success] = 'The Gossip was successfully edited'
    redirect_to @gossip
  else
    render :edit
  end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    flash[:success] = 'The Gossip was successfully destroyed'
    redirect_to gossips_path
  end

private

def gossip_params
  params.require(:gossip).permit(:title, :content)
end

end