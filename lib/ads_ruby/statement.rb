module AdsRuby
  class Statement
    def initialize(connection, client)
      @connection = connection
      @client = client
    end

    def execute_query(sql)
      execute(sql, ExecuteMethodType::QUERY)
    end

    def execute_update(sql)
      execute(sql , ExecuteMethodType::UPDATE)
    end

    def execute(sql, method_type)
      descriptor = @client.execute(sql, method_type)
      a = @client.getNextExecutionResult(descriptor.executionId)
      b = 5
    end
  end
end