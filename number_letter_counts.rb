	
# def total_count_of_chars_per_number(input_number)

# 	if input_number == 0
# 		return "zero"
# 	end

# 	text_count = ""

# 	numbers_to_words_hash = {

# 		1000 => "onethousand",
# 		900 => "ninehundred",
# 		800 => "eighthundred",
# 		700 => "sevenhundred",
# 		600 => "sixhundred",
# 		500 => "fivehundred",
# 		400 => "fourhundred",
# 		300 => "threehundred",
# 		200 => "twohundred",
# 		100 => "onehundred",
# 		90 => "ninty",
# 		80 => "eighty",
# 		70 => "seventy",
# 		60 => "sixty",
# 		50 => "fifty",
# 		40 => "forty",
# 		30 => "thirty",
# 		20 => "twenty",
# 		19 => "nineteen",
# 		18 => "eighteen",
# 		17 => "seventeen",
# 		16 => "sixteen",
# 		15 => "fifteen",
# 		14 => "fourteen",
# 		13 => "thirteen",
# 		12 => "twelve",
# 		11 => "eleven",
# 		10 => "ten",
# 		9 => "nine",
# 		8 => "eight",
# 		7 => "seven",
# 		6 => "six",
# 		5 => "five",
# 		4 => "four",
# 		3 => "three",
# 		2 => "two",
# 		1 => "one"
# 	}



# 	numbers_to_words_hash.each do |key, value|

# 		text_count << value * (input_number / key)
# 		input_number = input_number % key
# 	end
# 	text_count
# end




# describe "#total_count_of_chars_per_number" do

# 	it "total_count_of_chars_per_number(0)" do
# 		expect(total_count_of_chars_per_number(0)).to eq "zero"
# 	end

# 	it "total_count_of_chars_per_number(1)" do
# 		expect(total_count_of_chars_per_number(1)).to eq "one"
# 	end

# 	it "total_count_of_chars_per_number(23)" do
# 		expect(total_count_of_chars_per_number(23)).to eq "twentythree"
# 	end


# 	it "total_count_of_chars_per_number(1999)" do
# 		expect(total_count_of_chars_per_number(1999)).to eq "onethousandninehundrednintynine"
# 	end


# end


def number_letter_counts(input_number)

	if input_number == 0
		return 4
	end

	total_text_count = 0

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
  	expect(number_letter_counts(1999)).to eq 31
  end

end



describe "#find_total_letter_count_in_range" do

	it "number_letter_counts(1)" do
		expect(number_letter_counts(1)).to eq 3
	end

	it "number_letter_counts(5)" do
		expect(number_letter_counts(5)).to eq 19
	end

end
