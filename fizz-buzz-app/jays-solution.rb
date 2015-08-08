require 'sinatra'
require 'rspec'

get '/' do
  val = get_fizzy_with_it(params['number'].to_i)
  p val.empty? ? params['number'] : val
end

def get_fizzy_with_it(num)
  "".tap do |str|
    str << 'Fizz' if num % 5 == 0 
    str << 'Buzz' if num % 3 == 0 
  end
end

RSpec.describe 'get_fizzy_with_it' do
  it 'outputs FizzBuzz if n divisible by 15' do
    expect(get_fizzy_with_it(15)).to eq 'FizzBuzz'
  end

  it 'outputs Fizz if n divisible by 5' do
    expect(get_fizzy_with_it(5)).to eq 'Fizz'
  end

  it 'outputs Buzz if n divisible by 3' do
    expect(get_fizzy_with_it(3)).to eq 'Buzz'
  end

  it 'outputs empty string if n not divisible by 3, 5 or 15' do
    expect(get_fizzy_with_it(7)).to eq '' 
  end
end
