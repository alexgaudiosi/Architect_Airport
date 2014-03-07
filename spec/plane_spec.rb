require_relative "../lib/plane"
require_relative "../lib/airport"

describe Plane do

	let (:plane) {Plane.new}

	it "should be able to fly, or we have a problem" do
		expect(plane.flying).to eq(true)
	end

	it "should be able to be grounded" do
		expect(plane.grounded).to eq(false)
	end

end