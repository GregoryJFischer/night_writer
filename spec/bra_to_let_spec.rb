require 'rspec'
require './lib/bra_to_let'

describe BraToLet do
  before :each do
    @b = BraToLet.new
  end

  it 'is an instance of BraToLet' do
    expect(@b).to be_a BraToLet
  end

  it '#n_by_b' do
    expect(@b.n_by_b[[['0.'],['..'],['..']]]).to eq 'a'
    expect(@b.n_by_b[[['00'],['00'],['0.']]]).to eq 'q'
    expect(@b.n_by_b[[['..'],['..'],['..']]]).to eq ' '
  end
end