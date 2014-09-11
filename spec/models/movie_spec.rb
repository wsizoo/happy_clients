require 'spec_helper'

describe "A movie" do
  it "is a flop if the total gross is less than $50M" do
    movie = Movie.new(total_gross: 40000000)

    expect(movie.flop?).to eq(true)
  end
  
  it "is not a flop if the total gross is greater than $50M" do
    movie = Movie.new(total_gross: 60000000)

    expect(movie.flop?).to eq(false)
  end
end