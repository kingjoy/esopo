# frozen_string_literal: true

RSpec.describe Esopo::ValuesGenerator do
  it 'check uuid type string' do
    stdin = Esopo::ValuesGenerator.rand_uuid(4)
    expect(stdin).to be_a(String)
  end
  it 'check input version' do
    gen_version = Random.new
    gen_version = gen_version.rand(9)
    stdin = Esopo::ValuesGenerator.rand_uuid(gen_version)
    expect(stdin[14]).to eq(gen_version.to_s)
  end
  it 'check rand phone' do
    gen_version = Random.new
    gen_version = gen_version.rand(9)
    stdin = Esopo::ValuesGenerator.rand_phone(gen_version)
    expect(stdin[1]).to eq(gen_version.to_s)
  end
  it 'check rand phone length' do
    gen_version = Random.new
    gen_version = gen_version.rand(9)
    stdin = Esopo::ValuesGenerator.rand_phone(gen_version)
    expect(stdin.length).to eq(12)
  end
  it 'check rand number length' do
    stdin = Esopo::ValuesGenerator.rand_number
    expect(stdin.length).to eq(7)
  end
  it 'check rand number type' do
    stdin = Esopo::ValuesGenerator.rand_number
    expect(stdin.to_i).to be_a(Numeric)
  end
  it 'check timestamp' do
    stdin = Esopo::ValuesGenerator.current_timestamp
    expect(stdin).to eq(Time.now.utc.iso8601)
  end
end
