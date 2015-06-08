
require 'prime'



def find_nth_prime_number(nth_number)

	Prime.first(nth_number)[-1]

end


describe "#find_nth_prime_number" do 

	it "find_nth_prime_number(0)" do
		expect(find_nth_prime_number(0)).to eq nil
	end

	it "find_nth_prime_number(1)" do
		expect(find_nth_prime_number(1)).to eq 2
	end

	it "find_nth_prime_number(2)" do
		expect(find_nth_prime_number(2)).to eq 3
	end

	it "find_nth_prime_number(6)" do
		expect(find_nth_prime_number(6)).to eq 13
	end

	it "find_nth_prime_number(10_001)" do
		expect(find_nth_prime_number(10_001)).to eq 104743
	end
	
end


