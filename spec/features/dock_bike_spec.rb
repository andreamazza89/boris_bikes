require 'docking_station'
require "spec_helper"

describe 'Dock bike', :type => :feature do
  context 'When dock is full' do
    it 'user cannot load bike' do
      dock = DockingStation.new
      20.times{dock.docking_bike(Bike.new)}
      expect{dock.docking_bike(Bike.new)}.to raise_error 'sorry, dock is full' 
    end
  end
end
