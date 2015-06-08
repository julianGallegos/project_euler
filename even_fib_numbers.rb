def find_even_fibonacci_numbers(input_number)

	sum_of_even_fib_numbers = 0
	return 0 if input_number == 0

	first_number = 0
	second_number = 1
	third_number = first_number + second_number
	
	while third_number <= input_number

		third_number = first_number + second_number
		first_number = second_number
		second_number = third_number

		if first_number % 2 == 0
		sum_of_even_fib_numbers += first_number
		end

	end
	sum_of_even_fib_numbers
end





p find_even_fibonacci_numbers(100)


describe "#find_even_fibonacci_numbers" do 

	it "find_even_fibonacci_numbers(3))" do
		expect(find_even_fibonacci_numbers(3)).to eq 2
	end 

	it "find_even_fibonacci_numbers(13)" do
		expect(find_even_fibonacci_numbers(13)).to eq 10
	end

	it "find_even_fibonacci_numbers(4_000_000)" do
		expect(find_even_fibonacci_numbers(4_000_000)).to eq 4613732
	end
	
end