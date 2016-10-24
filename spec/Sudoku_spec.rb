require 'Sudoku'

describe Sudoku do
  before(@each) do
    @sudo= Sudoku.new
  end

  it "Compare if is a number" do
    result = @sudo.compare(1)
    result.should == "yes"
  end

  it "Compare if is not a number" do
    result = @sudo.compare("Lol")
    result.should == "no"
  end


end
