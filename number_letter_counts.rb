def number_letter_counts(input_number)

	if input_number == 0
		return 4
	end

	if input_number > 100
		total_text_count = 3
	else
		total_text_count = 0
	end

	char_count_per_number = {
		1000 => 11, #onethousand
		900 =>  11, #ninehundred
		800 => 12, #eighthundred
		700 =>  12, #sevenhundred
		600 => 10, #sixhundred
		500 => 11, #fivehundred
		400 =>  11, #fourhundred
		300 =>  12, #threehundred
		200 => 10, #twohundred
		100 =>  10, #onehundred
		90 =>  5, #ninty
		80 =>  6, #eighty
		70 =>  7, #seventy
		60 =>  5, #sixty
		50 =>  5, #fifty
		40 => 5, #forty
		30 =>  6, #thirty
		20 =>  6 , #twenty
		19 => 8, #ninteen
		18 => 8, #eighteen
		17 =>  9, #seventeen
		16 =>  7, #sixteen
		15 => 7, #fifteen
		14 => 8, #fourteen
		13 => 8, #thirteen
		12 => 6, #twelve
		11 => 6, #eleven
		10 => 3, #ten
		9 =>  4, #nine
		8 =>  5, #eight
		7 =>  5, #seven
		6 =>  3, #six
		5 =>  4, #five
		4 =>  4, #four
		3 =>  5, #three
		2 =>  3, #two
		1 =>  3, #one
	}

	char_count_per_number.each do |key, value|

		total_text_count += value * (input_number / key)
		input_number = input_number % key
	end
	total_text_count
end


def find_total_letter_count_in_range(input_number) 
 	
 	total_char_count = 0

	(1..input_number).each do |num|
		total_char_count += number_letter_counts(num)
	end

	total_char_count
end

p find_total_letter_count_in_range(101)


describe "#number_letter_counts" do

	it "number_letter_counts(0)" do
		expect(number_letter_counts(0)).to eq 4
	end

	it "number_letter_counts(1)" do
		expect(number_letter_counts(1)).to eq 3
  end 

  it "number_letter_counts(33)" do
  	expect(number_letter_counts(33)).to eq 11
  end

  it "number_letter_counts(1999)" do
  	expect(number_letter_counts(1999)).to eq 34
  end

  it "number_letter_counts(342)" do
  	expect(number_letter_counts(342)).to eq 23
  end

  it "number_letter_counts(112)" do
  	expect(number_letter_counts(112)).to eq 19
  end

end




describe "#find_total_letter_count_in_range" do

	it "find_total_letter_count_in_range(1)" do
		expect(find_total_letter_count_in_range(1)).to eq 3
	end

	it "find_total_letter_count_in_range(5)" do
		expect(find_total_letter_count_in_range(5)).to eq 19
	end



	it "find_total_letter_count_in_range(1000)" do
		expect(find_total_letter_count_in_range(1000)).to eq 21051
	end

end
