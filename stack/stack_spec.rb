require_relative 'stack'

RSpec.describe Stack do 
	before do 
		@this0 = Stack.new
		@this3 = Stack.new.push(1).push(2).push(3)
	end

	it 'has an attribute, data_store, which displays an array of the values in the Stack' do 
		expect(@this3.data_store).to eq([1,2,3])
	end
	it 'has an attribute, back, which displays the last value in the Stack. Should be 0 by default.' do 
		expect(@this0.back).to eq(0)  #verify default
		expect(@this3.back).to eq(3)
	end
	it 'has back attribute which a user should not be able to set.' do 
		expect{@this3.back = 5}.to raise_error(NoMethodError)
	end
	it 'has a push method which adds a new value to the end of the Stack' do 
		expect(@this3.back).to eq(3)
		@this3.push(11)
		expect(@this3.back).to eq(11)
	end
	it 'has a pop method which removes the last value of the Stack' do 
		expect(@this3.pop).to eq(3)
	end
	it 'should return nil if there is nothing to pop' do 
		expect(@this0.pop).to eq(nil)
	end
end
