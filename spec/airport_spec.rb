require_relative "../lib/plane"
require_relative "../lib/airport"
require_relative "../lib/weather"

describe Airport do

	let(:plane) { Plane.new }
	let(:hanger) { Airport.new }
	let(:weather) { Weather.new }

	it "should accept a plane" do
		expect(hanger.plane_count).to eq(0)
		hanger.land(plane)
		expect(hanger.plane_count).to eq(1)
	end

	it "should allow a plane to take off" do
		hanger.land(plane)
		hanger.take_off(plane)
		expect(hanger.plane_count).to eq(0)
	end

	it "should not accept a plane if full" do
		10.times do hanger.land(plane) end
		expect(lambda { hanger.land(plane) }).to raise_error(RuntimeError)
	end

	it "should allow planes to land when sunny" do
		hanger.stub(:sunny? => true)
		hanger.land(plane)
		expect(hanger.plane_count).to eq(1)
	end

		it "should allow planes to take off when sunny" do
		hanger.stub(:sunny? => true)
		hanger.take_off(plane)
		expect(hanger.plane_count).to eq(0)
	end
end