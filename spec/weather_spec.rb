require_relative "../lib/weather"

class WeatherWrapper; include Weather; end

describe Weather do

	it "should be sunny if over 15" do
		wrapper = WeatherWrapper.new
		wrapper.stub(:generator => 80)
		wrapper.generator.should eq(80)
		expect(wrapper.sunny?).to be(true)
	end

	it "should be stormy if under 15" do
		wrapper = WeatherWrapper.new
		wrapper.stub(:generator => 10)
		wrapper.generator.should eq(10)
		expect(wrapper.stormy?).to be(true)
	end

	it "should be sunny 80% of the time" do
		wrapper = WeatherWrapper.new
		weather_readings = Array.new(1000) { wrapper.sunny? }
		times_when_sunny = weather_readings.count {|reading| reading == true }
		expect(times_when_sunny).to be_within(50).of(800)
	end
end
