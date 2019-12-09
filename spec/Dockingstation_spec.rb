require 'BojoB'

describe DockingStation do

  it "should have a class called docking station" do
    docking_station = DockingStation.new
    expect(docking_station).to be_a(DockingStation)
  end

 it "Should release the bike" do
   docking_station = DockingStation.new
   expect(docking_station).to respond_to(:release_bike)
 end

 it "should return a bike when release_bike is called" do
   docking_station = DockingStation.new
   expect(docking_station.release_bike).to be_a(Bike)
 end
 it "should return working bike" do
   docking_station = DockingStation.new
   bike = docking_station.release_bike
   expect(bike.working?).to eq(true)
 end
 it "add bike to docking_station" do
   docking_station = DockingStation.new
   expect(docking_station).to respond_to(:dock_bike)
 end
end
