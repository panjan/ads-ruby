require_relative 'statement'

module AdsRuby
  class Connection
    def initialize(connection_id, client)
      @connection_id = connection_id
      @client = client
    end

    def create_statement
      Statement.new(self, @client)
    end
  end
end