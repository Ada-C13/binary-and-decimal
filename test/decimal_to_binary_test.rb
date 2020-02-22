require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/skip_dsl"
require_relative '../lib/decimal_to_binary'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "decimal to binary" do
  it "From 164 to 10100100" do
    decimal = 164
    binary_array = [1, 0, 1, 0, 0, 1, 0, 0]

    decimal_to_binary(decimal).must_equal binary_array
  end

  it "From 0 to 0" do
    decimal = 0
    binary_array = 0

    decimal_to_binary(decimal).must_equal binary_array
  end

  it "From nil to ArgumentError" do
    expect{
      decimal_to_binary(nil)
    }.must_raise ArgumentError
  end
end