

def sum_of_all_numbers_divisible_by_3_and_5(input_number)

	numbers_divisble_by_3_and_5 = 0

		(1...input_number).each do |num|
			if num % 5 == 0 || num % 3 == 0
				numbers_divisble_by_3_and_5 += num
			end
		end
		numbers_divisble_by_3_and_5
end


#O of n space and time ?


describe "sum_of_all_numbers_divisible_by_3_and_5" do 

	it "sum_of_all_numbers_divisible_by_3_and_5(0)" do
		expect(sum_of_all_numbers_divisible_by_3_and_5(0)).to eq 0 
	end

	it "sum_of_all_numbers_divisible_by_3_and_5(3)" do
		expect(sum_of_all_numbers_divisible_by_3_and_5(3)).to eq 0
	end

	it "sum_of_all_numbers_divisible_by_3_and_5(5)" do
		expect(sum_of_all_numbers_divisible_by_3_and_5(5)).to eq 3
	end

	it "sum_of_all_numbers_divisible_by_3_and_5(10)" do
		expect(sum_of_all_numbers_divisible_by_3_and_5(10)).to eq 23
	end

	it "sum_of_all_numbers_divisible_by_3_and_5(15)" do
		expect(sum_of_all_numbers_divisible_by_3_and_5(15)).to eq 45
	end

	it "sum_of_all_numbers_divisible_by_3_and_5(1000)" do
		expect(sum_of_all_numbers_divisible_by_3_and_5(1000)).to eq 233168
	end

	

	
end