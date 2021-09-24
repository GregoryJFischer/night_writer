require 'rspec'
require './lib/characters'

describe Characters do
  before :each do
    @c = Characters.new
  end

  it 'is a Character' do
    expect(@c).to be_a Characters
  end

  it '#b_by_n' do
    expect(@c.b_by_n['a'][:first]).to eq '0.'
    expect(@c.b_by_n['d'][:second]).to eq '.0'
    expect(@c.b_by_n['w'][:last]).to eq '.0'
  end
end