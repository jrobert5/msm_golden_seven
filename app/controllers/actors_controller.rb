class ActorsController < ApplicationController

  def new_form
  end

  def create_row
    @actor=Actor.new
    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]
    @actor.save

    render('show.html.erb')

  end

  def index
    @actors=Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end


  def destroy_row
    @actor = Actor.find(params[:id])
    @actor.destroy

    redirect_to('/actors')
  end

  def edit_form
      @actor = Actor.find(params[:id])
  end

  def update_row
    @actor = Actor.find(params[:id])
    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]
    @actor.save

    render('show.html.erb')
  end


end
