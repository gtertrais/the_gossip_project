class StaticPagesController < ApplicationController
 
  def index
    @gossips = Gossip.all
  end

  def contact
  end

  def team
  end

end
