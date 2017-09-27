require './lib/DockingStation'

station = DockingStation.new
20.times { station.dock Bike.new }
