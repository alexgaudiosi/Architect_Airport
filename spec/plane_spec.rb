require_relative "../lib/plane"

describe Plane do

	let (:plane) {Plane.new}

	it "should land at the airport" do
		expect(plane).to land
	end

end