require_relative '../lib/ads_ruby/driver'

def ud(sql)
  @driver.update sql
end

def sl(sql)
  @driver.select sql
end

RSpec.describe AdsRuby do
  let(:cities_table_name) { 'test_cities' }
  let(:countries_table_name) { 'test_countries' }

  before do
    @driver = AdsRuby::Driver.new
    @driver.authenticate
  end

  it 'has a version number' do
    expect(AdsRuby::VERSION).not_to be nil
  end

  it 'can create a table and fill it with data' do
    ud "DROP TABLE IF EXISTS #{cities_table_name}"
    ud "CREATE TABLE #{cities_table_name} (name VARCHAR(200))"
    ud "INSERT INTO #{cities_table_name} (name) VALUES ('Brno')"
    ud "INSERT INTO #{cities_table_name} (name) VALUES ('Praha')"
    result = sl "SELECT * FROM #{cities_table_name}"
    expect(result).not_to be nil
  end

  it 'can create a more complex table' do
    ud "DROP TABLE IF EXISTS #{countries_table_name}"
    ud "CREATE TABLE #{countries_table_name} (name VARCHAR(200), citizens INT)"
    ud "INSERT INTO #{countries_table_name} (name, citizens) VALUES('USA', 120)"
    result = sl "SELECT * FROM #{countries_table_name}"
    expect(result).not_to be nil
  end
end