RSpec.describe 'configuration' do
  it 'return configuration' do
    expect(AdsRuby::config).not_to be nil
  end
end
