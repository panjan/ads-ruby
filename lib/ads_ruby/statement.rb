module AdsRuby
  class Statement
    def initialize(connection, client)
      @connection = connection
      @client = client
    end

    def execute_query(sql)
      result = execute(sql, ExecuteMethodType::QUERY)
      result_set_id = result.resultSetId
      metadata = @client.getResultSetMetadata(result_set_id)
      binary = @client.queryResultSetBinary(result_set_id)
      deserialize(binary, metadata)
    end

    def execute_update(sql)
      execute(sql , ExecuteMethodType::UPDATE)
    end

    def execute(sql, method_type)
      descriptor = @client.execute(sql, method_type)
      @client.getNextExecutionResult(descriptor.executionId)
    end

    def deserialize(binary, metadata)
      return if binary.nil?

      column_count = metadata.columns.length
      column_count.times.with_index do |i|
        puts i
      end
    end
  end
end
