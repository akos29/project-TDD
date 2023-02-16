require './solver'

RSpec.describe Solver do 
  describe '#factorial' do 
    it 'returns an integer' do
      expect(subject.factorial).to be_integer
    end
    context 'when N is a number less than zero' do
      it 'should raise an exception' do
        expect  {subject.factorial n: -1}.to raise_error('Number cannot be less than zero.')
    end
    
    context 'When N is a positive integer' do 
     it 'returns 1 when N is 0' do
        actual = subject.factorial( n: 0)
        res = 1
        expect(actual).to eql(res)
      end

      it 'return 24 when N is 4' do 
        actual = subject.factorial( n: 4)
        res = 24
        expect(actual).to eq(res)
      end
    end
  end
end
end