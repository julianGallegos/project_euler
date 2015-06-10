# #create helper method to evaluate if number in a range is prime

# def is_prime?(input_number)
# 	index = 2

# 	#accounts for 0 and 1 not being prime numbers
# 	return false if input_number <= 1

# 	while index < input_number

# 		divisible = (input_number % index) == 0
# 		if divisible
# 			return false
# 		end
# 			index += 1
# 		end
# 	return true
# end


# #iterate through each number of the array and store all prime numbers

# # to solve the problem I first tried to figure out how to just find all of the primes numbers when given a range of numbers

# def find_all_prime_numbers(input_number)
	
# 	prime_numbers = []

# 	index = 1


# 		(1..input_number).each do |num|
# 			while index < num
# 				if is_prime?(num)
# 					prime_numbers << num
# 				end
# 				index += 1
# 			end
# 		end
# 	 prime_numbers
# end


# def sum_prime_numbers(input_number)

# 	prime_numbers_sum = 0

# 	index = 1
# 	timer = "."

# 	(1...input_number).each do |num|
# 		while index < num
# 			if is_prime?(num)
# 				prime_numbers_sum += num
# 			end
# 			p index += 1
# 		end
# 	end
# 	prime_numbers_sum
# end





# describe "#is_prime?" do 


# 	it "is_prime?(1)" do
# 		expect is_prime?(1).should == false
# 	end

# 	it "is_prime?(2)" do 
# 		expect is_prime?(2).should == true
# 	end

# 	it "is_prime?(3)" do
# 		expect is_prime?(3).should == true
# 	end

# 	it "is_prime?(9)" do
# 		expect is_prime?(9).should == false
# 	end

# 	it "is_prime?(13)" do 
# 		expect is_prime?(13).should == true
# 	end

# 	it "is_prime?(7)" do
# 		expect is_prime?(7).should == true
# 	end

# 	it "is_prime?(9)" do 
# 		expect is_prime?(9).should == false
# 	end

# 	it "is_prime?(21)" do
# 		expect is_prime?(21).should == false
# 	end

# 	it "is_prime?(4643)" do
# 		expect is_prime?(4643).should == true
# 	end

# end


# describe "#find_all_prime_numbers" do

# 	it "find_all_prime_numbers(0)" do
# 		expect(find_all_prime_numbers(0)).to eq []
# 	end

# 	it "find_all_prime_numbers(1)" do
# 		expect(find_all_prime_numbers(1)).to eq []
# 	end

# 	it "find_all_prime_numbers(3)" do
# 		expect(find_all_prime_numbers(2)).to eq [2]
# 	end

# 	it "find_all_prime_numbers(7)" do
# 		expect(find_all_prime_numbers(7)).to eq [2,3,5,7]
# 	end

# 	it "find_all_prime_numbers(13)" do
# 		expect(find_all_prime_numbers(13)).to eq [2,3,5,7,11,13]
# 	end

# end


# describe "#sum_prime_numbers(10)" do

# 	it "sum_prime_numbers(0)" do
# 		expect(sum_prime_numbers(0)).to eq 0
# 	end

# 	it "sum_prime_numbers(3)" do
# 		expect(sum_prime_numbers(3)).to eq 2
# 	end
	
# 	it "sum_prime_numbers(10)" do
# 		expect(sum_prime_numbers(10)).to eq 17
# 	end


# 	it "sum_prime_numbers(100)" do
# 		expect(sum_prime_numbers(100)).to eq 1060
# 	end

# 	it "sum_prime_numbers(2_000_000)" do
# 		expect(sum_prime_numbers(2_000_000)).to eq 142913828922
# 	end


# end



# this solution uses the Prime enumerable.  Most efficent solution and not sure how the Prime module operates






require 'prime'

def sum_all_prime_numbers(input_number)

 return 0 if input_number <= 1

 Prime.each(input_number).reduce(:+)

end





describe "#sum_all_prime_numbers(0)" do


	it "sum_all_prime_numbers(0)" do
		expect(sum_all_prime_numbers(0)).to eq 0
	end

	it "sum_all_prime_numbers(10)" do
		expect(sum_all_prime_numbers(10)).to eq 17
	end

	it "sum_all_prime_numbers(100)" do
		expect(sum_all_prime_numbers(100)).to eq 1060
	end

	it "sum_all_prime_numbers(2_000_000)" do
		expect(sum_all_prime_numbers(2_000_000)).to eq 142913828922   
	end

end





