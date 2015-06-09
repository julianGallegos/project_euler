#create helper method to evaluate if number in a range is prime

def is_prime?(input_number)
	index = 2

	while index <= input_number
		divisible = ((input_number % index) == 0)

		if divisible
			return false
		else
			return true
		end
	end
	index += 1
end


def find_all_prime_numbers(input_number)
	
	prime_numbers = []

	index = 2


		(1..input_number).each do |num|
			while index < num
				if is_prime?(num)
					prime_numbers << num
				end
				index += 1
			end
		end
	 prime_numbers
end







describe "#is_prime?" do 

	it "is_prime?(13)" do 
		expect is_prime?(13).should == true
	end

	it "is_prime?(7)" do
		expect is_prime?(7).should == true
	end

	it "is_prime?(9)" do 
		expect is_prime?(9).should == false
	end

	it "is_prime(21)" do
		expect is_prime?(21).should == false
	end
	
end


describe "#find_all_prime_numbers" do

	it "find_all_prime_numbers(3)" do
		expect(find_all_prime_numbers(3)).to eq [3]
	end


end


















