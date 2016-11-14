require 'Sudoku'

describe Sudoku do
  before(@each) do
    @sudo= Sudoku.new
  end

  it "Compare if is a String" do
    result = @sudo.verify("Lol")
    result.should == false
  end

  it "Compare if is a valid Number 1 to 9" do
    result = @sudo.verify(5)
    result.should == false
  end

  it "Compare if is not a valid number" do
    result = @sudo.verify(10)
    result.should == false
    result = @sudo.verify(-5)
    result.should == false
  end

end
