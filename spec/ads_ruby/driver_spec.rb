require_relative '../../lib/ads_ruby/driver'

RSpec.describe AdsRuby::Driver do
  it 'authenticates' do
    result = subject.authenticate
    expect(result).to be
  end
end
