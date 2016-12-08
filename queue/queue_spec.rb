require_relative 'queue'

RSpec.describe Queue do 

	before do 
		@q0= Queue.new  #used in default testing
		@q= Queue.new.enqueue(10).enqueue(1).enqueue(2).enqueue(3).enqueue(4).enqueue(5)  #[10,1,2,3,4,5]
	end

	describe 'attributes' do 
		it'has an attribute, data_store, which displays an array of the values in the Queue' do 
			expect(@q.data_store).to eq([10,1,2,3,4,5])
		end
		it 'has an attribute, back, which displays the last value in the Stack. Should be 0 by default.' do 
			expect(@q0.back).to eq(0)  #verify default
			expect(@q.back).to eq(5)			
		end
		it 'has an attribute called max which tracks what is the max of the Queue' do
			expect(@q.max).to eq(10) #case: static
			@q.dequeue
			expect(@q.max).to eq(5)  #case: after a dequeue
			@q.enqueue(33)
			expect(@q.max).to eq(33) #case: after an enqueue
		end
		it 'has an attribute called min which tracks what is the minimum of the Queue' do
			expect(@q.min).to eq(1) #case: static
			@q.dequeue
			@q.dequeue
			expect(@q.min).to eq(2)  #case: after a dequeue(s)
			@q.enqueue(-5)
			expect(@q.min).to eq(-5) #case: after an enqueue
		end
	end

	describe 'behavior' do 
		it 'Has a enqueue method which adds a new value to the end of the Queue' do 
			@q.enqueue(33)
			expect(@q.back).to eq(33)
		end
		it 'has a dequeue method which removes the first value of the Queue' do 
			@q.dequeue
			expect(@q.data_store[0]).to eq(1)
		end
		it 'has a dequeue method which returns nil if there is nothing to dequeue' do 
			expect(@q0.dequeue).to eq(nil)
		end
	end

end