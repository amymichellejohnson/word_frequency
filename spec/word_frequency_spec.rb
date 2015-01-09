require ('rspec')
require ('word_frequency')

describe ("String#word_frequency") do
  it ("counts the number of times the inputed word is contained in a one-word string") do
    expect("cat".word_frequency("cat")).to(eq(1))
  end

  it ("counts the number of times the inputed word is contained in a string of words") do
    expect("My cat is a very good cat".word_frequency("cat")).to(eq(2))
  end
  it ("counts the number of times the inputed word is contained in a string of words regardless of capitalization") do
    expect("The cat is the best".word_frequency("the")).to(eq(2))
  end
end
