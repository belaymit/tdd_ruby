require 'rspec'
require './helper_spec'

RSpec.describe ProblemSolver do
  before(:each) do
    @problem_solver = ProblemSolver.new
  end

  context 'Test case for a fibonacci series method' do
    it 'Should return 0 the number is 0' do
      expect(@problem_solver.fibonacci(0)).to eq 0
    end

    it 'Should return 1 if the input number is 1' do
      expect(@problem_solver.fibonacci(1)).to eq 1
    end

    it 'Should return 8 if the input number is 7' do
      expect(@problem_solver.fibonacci(7)).to eq 13
    end

    it 'Should retun error when the given argument is negative' do
      expect(@problem_solver.fibonacci(-1)).to eq 'Please enter a positive number'
    end
  end

  context 'Test case for factorial method' do
    it 'Should return 1 when the given argument is 0' do
      expect(@problem_solver.factorial(0)).to eq 1
    end

    it 'Should return 24 when the given argument is 3' do
      expect(@problem_solver.factorial(4)).to eq 24
    end

    it 'Should retun error when the given argument is negative' do
      expect(@problem_solver.factorial(-1)).to eq 'Please enter a positive number'
    end
  end

  context 'Test case for reverse_string method' do
    it 'Should return "esrevorciM" when the given argument is "Microverse"' do
      expect(@problem_solver.reverse('Microverse')).to eq 'esrevorciM'
    end

    it 'Should return "Please enter a string" when the given argument is not a string' do
      expect(@problem_solver.reverse(1)).to eq 'Please enter a string'
    end
  end

  context 'Test case for fizzbuzz method' do
    it 'Should return "fizz" when the provided argument is divisible by 3' do
      expect(@problem_solver.fizzbuzz(3)).to eq 'fizz'
    end

    it 'Should return "buzz" when the provided argument is divisible by 5' do
      expect(@problem_solver.fizzbuzz(5)).to eq 'buzz'
    end

    it 'Should return "fizzbuzz" when the provided argument is divisible by 3 and 5' do
      expect(@problem_solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'Should return the given input when the provided input is neither divisible by 3 nor by 5' do
      expect(@problem_solver.fizzbuzz(2)).to eq '2'
    end
  end
end
