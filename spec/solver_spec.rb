# frozen_string_literal: true

require './solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns an integer' do
      expect(subject.factorial).to be_integer
    end
    context 'when N is a number less than zero' do
      it 'should raise an exception' do
        expect { subject.factorial number: -1 }.to raise_error('Number cannot be less than zero.')
      end

      context 'When N is a positive integer' do
        it 'returns 1 when N is 0' do
          actual = subject.factorial(number: 0)
          res = 1
          expect(actual).to eql(res)
        end

        it 'return 24 when N is 4' do
          actual = subject.factorial(number: 4)
          res = 24
          expect(actual).to eq(res)
        end
      end
    end
  end

  describe '#reverse' do
    it 'returns Exception when no word is passed' do
      expect {subject.reverse}.to raise_error(ArgumentError)
    end
    it 'returns a string' do
      expect(subject.reverse 'sth').to be
    end
    it 'returns "olleh" when "hello" is passed' do
      actual = subject.reverse 'hello'
      res ="olleh"
      expect(actual).to eq(res)
    end
    it 'returns " !gnizama si ybuR" when "Ruby is amazing! " is passed' do
      actual = subject.reverse 'Ruby is amazing! '
      res =" !gnizama si ybuR"
      expect(actual).to eq(res)
    end

  end
end
