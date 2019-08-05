class DynamicPagesController < ApplicationController
  def landing_page
  end
  def show_gossip
    @gossips = Gossip.all
  end
  def show_profile
  end
end
