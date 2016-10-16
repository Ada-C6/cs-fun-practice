require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'

require_relative 'problem2.rb'

describe 'stretch' do
  it 'should return an empty array if the input is empty' do
    input = []
    output = stretch(input)
    output.must_equal([])
  end

  it 'should split 0 into 0 and 0' do
    input = [0]
    output = stretch(input)
    output.must_equal([0,0])
  end

  it 'correctly splits a large array' do
    input = [18, 7, 4, 24, 11]
    expected_output = [9, 9, 4, 3, 2, 2, 12, 12, 6, 5]
    stretch(input).must_equal(expected_output)
  end

  it 'should return an array twice as long as the parameter array' do
    inputs = [[1],[1,2,3]]
    inputs.each do |input|
      output = stretch(input)
      output.must_be_instance_of(Array)
      output.length.must_equal(input.length * 2)
    end
  end

  it 'should split an even number in half' do
    inputs = [[2],[10],[100]]
    expected_outputs = [[1,1],[5,5],[50,50]]
    inputs.each_with_index do |input, i |
      output = stretch(input)
      output.must_be_instance_of(Array)
      output.must_equal(expected_outputs[i])
    end
  end

  it 'should spilt an odd value and put thae bigger half first' do
    inputs = [[1], [3], [13], [99]]
    expected_outputs = [[1,0], [2,1], [7,6],[50,49]]
    inputs.each_with_index do |input, i |
      output = stretch(input)
      output.must_be_instance_of(Array)
      output.must_equal(expected_outputs[i])
    end
  end
end
