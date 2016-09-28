require_relative 'calculator'

describe Calculator do
	it "adds two integers" do
		calculator = Calculator.new
		expect(calculator.add(3,4)).to eq 7
	end
end

describe Calculator do
	it "subtracts two integers" do
		calculator = Calculator.new
		expect(calculator.subtract(7,1)).to eq 6
	end
end

describe Calculator do
	it "multiplies two integers" do
		calculator = Calculator.new
		expect(calculator.multiply(2,3)).to eq 6
	end
end

describe Calculator do
	it "divides two integers" do
		calculator = Calculator.new
		expect(calculator.divide(9,3)).to eq 3
	end
end