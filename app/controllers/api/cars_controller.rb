class Api::CarsController < ApplicationController

  def index
    @cars = Car.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @car = Car.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create
    @car = Car.create(
      year: params[:year],
      make: params[:make],
      model: params[:model],
      color: params[:color],
      mileage: params[:mileage],
      lot_id: params[:lot_id]
      )
    @car.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @car = Car.find_by(id: the_id)
    @car.year = params[:year] || @car.year
    @car.make = params[:make] || @car.make
    @car.model = params[:model] || @car.model
    @car.color = params[:color] || @car.color
    @car.mileage = params[:mileage] || @car.mileage
    @car.lot_id = params[:lot_id] || @car.lot_id

    @car.save
    render 'show.json.jb'
  end

  def destroy
    @car =Car.find_by(id: paras[:id])

    @car.destroy
    @car.save

    render 'destroy.json.jb'
  end

end
