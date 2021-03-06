require 'bike'

describe Bike do 
	let(:bike){Bike.new}

	it 'should not be broken after we create it' do
	expect(bike).not_to be_broken
	end

	it 'should be able to break' do
		bike.break!
		expect(bike).to be_broken
	end

	it 'bike should be fixed' do
		bike.break!
		expect(bike.fix!).not_to be_broken
	end

end