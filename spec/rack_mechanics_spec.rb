require_relative './spec_helper'

describe 'App' do
  it 'wishes user a good morning in the morning' do
    allow(Time).to receive(:now) {
      Time.new(2015, 11, 27, 9, 30)
    }
    get '/'
    expect(last_response.body).to match(/Afternoon/i)
  end

  it 'wishes user a good afternoon in the afternoon' do
    allow(Time).to receive(:now) {
      Time.new(2015, 11, 27, 14, 30)
    }
    get '/'
    expect(last_response.body).to match(/Afternoon/i)
  end
end
