require 'Sudoku'

describe Sudoku do
  before(@each) do
    @sudo= Sudoku.new
    @board=  [[1, 0, 9, 0, 0, 0, 0, 0, 7],
              [0, 0, 4, 0, 7, 1, 9, 9, 0],
              [0, 6, 6, 0, 8, 8, 0, 0, 0],
              [4, 0, 3, 0, 7, 0, 8, 0, 0],
              [0, 0, 7, 0, 0, 5, 1, 0, 1],
              [7, 6, 0, 1, 0, 1, 0, 0, 0],
              [0, 0, 0, 0, 0, 3, 0, 0, 8],
              [0, 1, 5, 0, 0, 4, 9, 7, 0],
              [4, 6, 6, 8, 5, 0, 0, 1, 0]]
  end

  it "Compare if is a String" do
    @sudo.is_number_between_1_to_9?("Lol").should==false
  end

  it "Compare if is a valid Number 1 to 9" do
    @sudo.is_number_between_1_to_9?(5).should==true
  end

  it "Compare if is not a valid number" do
    @sudo.is_number_between_1_to_9?(10).should==false
    @sudo.is_number_between_1_to_9?(-5).should==false
  end

  it "Compare numbers in the line" do
    @sudo.number_is_not_repeated_in_row?(9,0, @board).should == true
    @sudo.number_is_not_repeated_in_row?(9,1, @board).should == false
    @sudo.number_is_not_repeated_in_row?(2,0, @board).should == true
  end

  it "Compare numbers in the column" do
    @sudo.number_is_not_repeated_in_column?(9,0, @board).should == true
    @sudo.number_is_not_repeated_in_column?(6,1, @board).should == false
    @sudo.number_is_not_repeated_in_column?(4,0, @board).should == false
  end

  it "Compare numbers in the box A" do
    @sudo.number_is_not_repeated_in_box?(9,0,2, @board).should == true
    @sudo.number_is_not_repeated_in_box?(6,2,1, @board).should == false
  end

  it "Compare numbers in the box B" do
    @sudo.number_is_not_repeated_in_box?(7,1,4, @board).should == true
    @sudo.number_is_not_repeated_in_box?(8,2,3, @board).should == false
  end

  it "Compare numbers in the box C" do
    @sudo.number_is_not_repeated_in_box?(7,0,8, @board).should == true
    @sudo.number_is_not_repeated_in_box?(9,1,7, @board).should == false
  end

  it "Compare numbers in the box D" do
    @sudo.number_is_not_repeated_in_box?(4,4,2, @board).should == true
    @sudo.number_is_not_repeated_in_box?(7,5,2, @board).should == false
  end

  it "Compare numbers in the box E" do
    @sudo.number_is_not_repeated_in_box?(5,4,5, @board).should == true
    @sudo.number_is_not_repeated_in_box?(1,5,5, @board).should == false
  end

  it "Compare numbers in the box F" do
    @sudo.number_is_not_repeated_in_box?(8,3,6, @board).should == true
    @sudo.number_is_not_repeated_in_box?(1,4,8, @board).should == false
  end

  it "Compare numbers in the box G" do
    @sudo.number_is_not_repeated_in_box?(4,8,0, @board).should == true
    @sudo.number_is_not_repeated_in_box?(6,8,1, @board).should == false
  end

  it "Compare numbers in the box H" do
    @sudo.number_is_not_repeated_in_box?(4,5,7, @board).should == true
  end

  it "Compare numbers in the box I" do
    @sudo.number_is_not_repeated_in_box?(1,8,7, @board).should == true
  end

  it "should return true if number is factible" do
    @sudo.is_number_factible?(1, 7, 1, @board).should == true
  end

  it "should return false if number is NOT factible" do
    @sudo.is_number_factible?(4, 3, 0, @board).should == false
  end

end
