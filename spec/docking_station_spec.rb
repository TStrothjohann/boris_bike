require 'station'

describe Station do
	let(:bike){Bike.new}
	let(:station){Station.new(capacity: 20)}

	def fill_station(station)
	20.times {station.dock(bike)}
	end


	it 'should be able to accept bikes'  do 
expect(station.bike_count).to eq(0)
station.dock(bike)
expect(station.bike_count).to eq(1)  
	end

	it 'should release a bike' do
	station.dock(bike)
	station.release(bike)
	expect(station.bike_count).to eq(0)
	end

	it 'should know when it\'s full' do
		expect(station).not_to be_full
		fill_station(station)
		expect(station).to be_full
	end

	it 'should not accept a bike if it\'s full' do
		fill_station(station)
		expect(lambda { station.dock(bike) }).to raise_error(RuntimeError, 'Station is full')
	end
end