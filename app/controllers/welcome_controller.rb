class WelcomeController < ApplicationController
  
  #usuario normal
  before_action only: [:index, :show] do
    authorize_request(["normal","ejecutivo","admin"])
  end
  #usuario ejecutivo
  before_action only: [:new, :edit, :create, :update] do
    authorize_request(["ejecutivo","admin"])
  end
  #usuario admin
  before_action only: [:destroy] do
    authorize_request(["admin"])
  end
  def index
  end
end
