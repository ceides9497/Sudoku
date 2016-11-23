require 'Sudoku'

describe Sudoku do
  before(@each) do
    @sudo= Sudoku.new
    @board=  [[1, 0, 0, 0, 0, 0, 0, 0, 0],
              [0, 0, 4, 0, 0, 1, 9, 9, 0],
              [0, 6, 0, 0, 8, 0, 0, 0, 0],
              [4, 0, 3, 0, 7, 0, 8, 0, 0],
              [0, 0, 0, 0, 0, 5, 1, 0, 0],
              [7, 6, 0, 1, 0, 0, 0, 0, 0],
              [0, 0, 0, 0, 0, 3, 0, 0, 8],
              [0, 1, 5, 0, 0, 4, 9, 7, 0],
              [4, 0, 6, 8, 5, 0, 0, 1, 0]]
  end

  it "Compare if is a String" do

    #result = @sudo.verify("Lol")
    @sudo.is_number_between_1_to_9?("Lol").should==false


    #result.should == false
  end

  it "Compare if is a valid Number 1 to 9" do

    @sudo.is_number_between_1_to_9?(5).should==true
    #result = @sudo.verify(5)
    #result.should == true
  end

  it "Compare if is not a valid number" do

    @sudo.is_number_between_1_to_9?(10).should==false
    @sudo.is_number_between_1_to_9?(-5).should==false

  #  result = @sudo.verify(10)
  #  result.should == false
  #  result = @sudo.verify(-5)
  #  result.should == false
  end

  it "Compare numbers in the line" do
    @sudo.board = @board

    #result = @sudo.verify_line(9,0)
    @sudo.number_is_not_repeated_in_row?(9,0, @board).should == true
    @sudo.number_is_not_repeated_in_row?(9,1, @board).should == false
    @sudo.number_is_not_repeated_in_row?(2,0, @board).should == true

#    result.should == true
#    result = @sudo.verify_line(9,1)
#    result.should == false
#    result = @sudo.verify_line(2,0)
#    result.should == true
  end

  it "Compare numbers in the column" do
    @sudo.board = @board
    @sudo.number_is_not_repeated_in_column?(9,0, @board).should == true
    @sudo.number_is_not_repeated_in_column?(6,1, @board).should == false
    @sudo.number_is_not_repeated_in_column?(4,0, @board).should == false
  end

  it "should return true if number is factible" do
    @sudo.is_number_factible?(1, 7, 1, @board).should == true
  end

  it "should return false if number is NOT factible" do
    @sudo.is_number_factible?(4, 3, 0, @board).should == false
  end

end
