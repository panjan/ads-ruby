require_relative '../../lib/ads_ruby/connection'

RSpec.describe AdsRuby::Connection do
  it 'authenticates' do
    result = subject.authenticate
    expect(result).to be
  end
end
