class DynamicPagesController < ApplicationController
  def name
  end
  def gossip
    @gossips = Gossip.all
  end
  def user
  end
end
