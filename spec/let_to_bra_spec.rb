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

    expect(a).to eq "0.\n..\n..\n"

    test = @l.convert("ab.")

    expect(test).to eq "0.0...\n..0.00\n.....0\n"
  end

  it '#final_text' do
    test = ""

    41.times do
      test += " "
    end

    test_final = @l.final_text(test)

    expect(test_final.length).to eq 252

    test_final_split = test_final.split("")
    new_lines = test_final_split.select { |letter| letter == "\n" }
    spaces = test_final_split.select { |letter| letter == "."}

    expect(new_lines.length).to eq 6
    expect(spaces.length).to eq 246
  end

  it '#end_message' do
    expect(@l.end_message('name', 1)).to eq "Created 'name' containing 1 characters"
  end

  it '#uppercase?' do
    expect(@l.uppercase?('a')).to eq false
    expect(@l.uppercase?('A')).to eq true
  end
end