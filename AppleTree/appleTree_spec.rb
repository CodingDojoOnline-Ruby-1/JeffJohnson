require_relative 'appleTree'

RSpec.describe AppleTree do
	before do
		@mac0 = AppleTree.new 
		@mac2 = AppleTree.new.year_gone_by.year_gone_by
		@mac3 = AppleTree.new.year_gone_by.year_gone_by.year_gone_by
		@mac4 = AppleTree.new.year_gone_by.year_gone_by.year_gone_by.year_gone_by
		@mac10 = AppleTree.new.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by
		@mac11 = AppleTree.new.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by
	end
	
	it 'should have a height and age' do 
		expect(@mac2.age).to eq(2)
		expect(@mac2.height).to eq(1)		
	end
	it 'should have a method called year_gone_by, which ages the tree by 1 year affecting its height' do 
		@mac2.year_gone_by
		expect(@mac2.age).to eq(3)
		expect(@mac2.height).to eq(1.5)
	end
	it 'should have a count of how many apples is on it' do 
		expect(@mac4.apples).to eq(16)
	end
	it 'should not grow apples for the first three years of its life' do 
		expect(@mac0.apples).to eq(0)
		expect(@mac2.apples).to eq(0)
		expect(@mac3.apples).to eq(0)
		expect(@mac4.apples).to eq(16)
	end
	it 'should have a method called pick_apples that takes all of the apples off the tree' do 
		expect(@mac4.pick_apples.apples).to eq(0)
	end
	it 'should decay and not grow apples after 10 years' do 
		expect(@mac10.apples).to eq(100)
		expect(@mac11.apples).to eq(0)
	end
end