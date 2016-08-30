require_relative("lib/string_calc.rb")

RSpec.describe String_calc do
	let :mr_calculator {String_calc.new}
	it "returns 0 for empty string" do
		expect( mr_calculator.add("") ).to eq(0)
	end
	it "returns the number for a single number" do
		expect( mr_calculator.add("6") ).to eq(6)
		expect( mr_calculator.add("9") ).to eq(9)
	end
	it "returns the numbers added up for two numbers" do
		expect( mr_calculator.add("5,7") ).to eq(12)
		expect( mr_calculator.add("4,3") ).to eq(7)
	end
end	
