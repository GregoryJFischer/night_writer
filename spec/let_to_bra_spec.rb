require 'rspec'
require './lib/let_to_bra'

describe LetToBra do
  before :each do
    @l = LetToBra.new
  end

  it 'is an instance of LetToBra' do
    expect(@l).to be_a LetToBra
  end

  it '#b_by_n' do
    expect(@l.b_by_n['a'][:first]).to eq '0.'
    expect(@l.b_by_n['d'][:second]).to eq '.0'
    expect(@l.b_by_n['w'][:third]).to eq '.0'
  end

  it '#convert' do
    a = @l.convert("a")

    expect(a).to eq "0.\n..\n.."

    test = @l.convert("ab.")

    expect(test).to eq "0.0...\n..0.00\n.....0"
  end
end