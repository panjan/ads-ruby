require_relative '../../lib/ads_ruby/driver'

RSpec.describe AdsRuby::Driver do
  describe '#authenticate' do
    it 'authenticates' do
      result = subject.authenticate
      expect(result).to be
    end
  end

  describe '#execute' do
    it 'executes a update query' do
      subject.authenticate
      sql = 'DROP TABLE IF EXISTS meh'
      result = subject.update sql
    end

    it 'executes a select query' do
      subject.authenticate
      sql = 'SELECT * FROM ADS_RUBY_TEST'
      result = subject.select sql
    end
  end
end
