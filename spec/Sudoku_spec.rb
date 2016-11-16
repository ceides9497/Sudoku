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
    result.should == true
  end

  it "Compare if is not a valid number" do
    result = @sudo.verify(10)
    result.should == false
    result = @sudo.verify(-5)
    result.should == false
  end

  it "Compare numbers in the line" do
    result = @sudo.verify_line(9,0)
    result.should == true
    result = @sudo.verify_line(9,1)
    result.should == false
    result = @sudo.verify_line(2,0)
    result.should == true
  end

end
