module AdsRuby
  class ResultFactory
    def initialize(client)
      @client = client
    end

    def process_update_query_result(resultSetId)
      metadata = @client.getResultSetMetadata(resultSetId)
      binary = @client.queryResultSetBinary(resultSetId)
    end
  end
end