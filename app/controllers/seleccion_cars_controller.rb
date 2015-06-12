class SeleccionCarsController < ApplicationController
  def index
    @vehiculos = Automovil.all
  end
end
