require_relative 'result_factory'

module AdsRuby
  class Statement
    def initialize(connection, client)
      @connection = connection
      @client = client
      @result_factory = ResultFactory.new(@client)
    end

    def execute_query(sql)
      result = execute(sql, ExecuteMethodType::QUERY)
      @result_factory.process_update_query_result(result.resultSetId)
    end

    def execute_update(sql)
      execute(sql , ExecuteMethodType::UPDATE)
    end

    def execute(sql, method_type)
      descriptor = @client.execute(sql, method_type)
      @client.getNextExecutionResult(descriptor.executionId)
    end
  end
end