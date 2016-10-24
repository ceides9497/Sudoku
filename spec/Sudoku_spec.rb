require 'Sudoku'

describe Sudoku do
  before(@each) do
    @sudo= Sudoku.new
  end

  it "Compare if is a String" do
    result = @sudo.compare("Lol")
    result.should == "no valid String"
  end

  it "Compare if is a valid Number 1 to 9" do
    result = @sudo.compare(5)
    result.should =="valid"
  end

  it "Compare if is not a valid number" do
    result = @sudo.compare(10)
    result.should == "no valid"
    result = @sudo.compare(-5)
    result.should == "no valid"
  end

end
