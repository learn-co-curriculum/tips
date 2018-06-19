describe "#clock_angle(time)" do
  it 'returns the correct angle between the clock hands representing 9:00' do
    expect(clock_angle("9:00")).to eq(90)
  end

  it 'returns the correct angle between the clock hands representing 12:00' do
    expect(clock_angle("12:00")).to eq(0)
  end

  it 'returns the correct angle between the clock hands representing 6:00' do
    expect(clock_angle("6:00")).to eq(180)
  end

  it 'returns the correct angle between the clock hands representing 3:15' do
    expect(clock_angle("3:15")).to eq(7.5)
  end

  it 'returns the correct angle between the clock hands representing 3:15' do
    expect(clock_angle("8:30")).to eq(75)
  end
end
