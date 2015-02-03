require 'station'

describe Station do
	let(:bike){Bike.new}
	let(:station){Station.new}

	it 'should be able to accept bikes'  do 
expect(station.bike_count).to eq(0)
station.dock(bike)
expect(station.bike_count).to eq(1)  
	end

end