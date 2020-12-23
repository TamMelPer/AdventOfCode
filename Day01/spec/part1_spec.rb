require 'part1.rb'

describe '#find_sum_2020_multiplied(entries)' do
  it 'finds two entries that sum to 2020 then multiplies them' do
    expect(find_sum_2020_multiplied("1721\n979\n366\n299\n675\n1456")).to eq 514579
  end
end

describe '#find_three_sum_2020_multiplied(entries)' do
  it 'finds three entries that sum to 2020 then multiplies them' do
    expect(find_three_sum_2020_multiplied("1721\n979\n366\n299\n675\n1456")).to eq 241861950
  end
end
