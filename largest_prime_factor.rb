require 'prime'

def largest_prime_factor(input_number)
	
	prime_numbers_found = []

	Prime.each(input_number) do |prime|
		if input_number % prime == 0 && input_number / prime != 1 
		prime_numbers_found << prime
		end
	end

	prime_numbers_found 
	
end







describe "#largest_prime_factor" do 

	#made this test first to make sure I was correctly returning all the prime numbers given the input number

	# it "largest_prime_factor" do
	# 	expect(largest_prime_factor(23)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23 ]
	# end


	it "largest_prime_factor(13195)" do
		expect(largest_prime_factor(13195)).to eq [5, 7, 13, 29]
	end


	
end