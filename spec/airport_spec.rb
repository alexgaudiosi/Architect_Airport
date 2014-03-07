require_relative "../lib/plane"
require_relative "../lib/airport"

describe Airport do

	let(:plane) { Plane.new }
	let(:hanger) { Airport.new }

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
		50.times do hanger.land(plane) end
			expect(lambda { hanger.land(plane) }).to raise_error(RuntimeError)
	end

end