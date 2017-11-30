require_relative '../lib/ads_ruby/driver'

def ud(sql)
  @driver.update sql
end

def sl(sql)
  @driver.select sql
end

RSpec.describe AdsRuby do
  let(:cities_table_name) { 'test_cities' }

  before do
    @driver = AdsRuby::Driver.new
    @driver.authenticate
  end

  it 'has a version number' do
    expect(AdsRuby::VERSION).not_to be nil
  end

  it 'can create a table and fill it with data' do
    ud "DROP TABLE IF EXISTS #{cities_table_name}"
    ud "CREATE TABLE #{cities_table_name} (name VARCHAR(200), citizens INT)"
    ud "INSERT INTO #{cities_table_name} (name, citizens) VALUES ('Brno', 120)"
    ud "INSERT INTO #{cities_table_name} (name, citizens) VALUES ('Praha', 150)"
    result = sl "SELECT * FROM #{cities_table_name}"
    expect(result).to eq [{name: 'Brno', citizens: 120}, {name: 'Praha', citizens: 150}]
    result = sl "SELECT citizens FROM #{cities_table_name} WHERE name = 'Brno'"
    expect(result).to eq [{citizens: 120}]
  end

  after do
    ud "DROP TABLE IF EXISTS #{cities_table_name}"
  end
end