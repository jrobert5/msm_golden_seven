class DirectorsController < ApplicationController

  def new_form
  end

  def create_row
    @director=Director.new
    @director.name = params[:name]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.save

    render('show.html.erb')

  end

  def index
    @Directors=Director.all
  end

  def show
    @director = Director.find(params[:id])
  end


  def destroy_row
    @director = Director.find(params[:id])
    @director.destroy

    redirect_to('/directors')
  end

  def edit_form
      @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])
    @director.name = params[:name]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.save

    render('show.html.erb')
  end


end
