require 'rspec'
require './lib/let_to_bra'

describe LetToBra do
  before :each do
    @l = LetToBra.new
  end

  it 'is an instance of LetToBra' do
    expect(@l).to be_a LetToBra
  end
end