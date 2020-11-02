class Api::LotController < ApplicationController

  def index
    @lots = Lot.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @lot = Lot.find_by[id: the_id]
    render 'show.json.jb'
  end

  def create
    @lot = Lot.create(
      name: params[:name],
      location: params[:location],
      phone: params[:phone]
      )
    @lot.save
    render 'show.json.jb'
  end

  def update 
    the_id = params[:id]
    @lot = Lot.find_by(id: the_id)
    @lot.name = params[:name] || @lot.name
    @lot.location = params[:location] || @lot.location
    @lot.phone = params[:phone] || @lot.phone

    @lot.save
    render 'show.json.jb'
  end

  def destroy
    @lot = Lot.find_by(id:params[:id])

    @lot.destroy
    @lot.save

    render 'destroy.json.jb'
  end

end
