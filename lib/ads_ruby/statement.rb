require_relative 'types'
require_relative 'bit_array'

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

      column_types = metadata.columns
                             .map(&:columnType)
                             .map { |t| Types.transport_type(t) }
      value_bits_length = (column_types.length + 7) / 8;
      # value_bits = byte[valueBitsLength];

      transport = Thrift::MemoryBufferTransport.new(binary)
      protocol = Thrift::BinaryProtocol.new(transport)
      results = []
      loop do
        value_bits = transport.read(value_bits_length)
        break if value_bits.length <= 0
          # if ((value_bits[i / 8] & 1 << i % 8) != 0)
          # end
        column_types.each_with_index do |column_type, i|
          case column_type
          when 'bool'
            result = protocol.read_bool;
          when 'int'
            result = protocol.read_i32;
          when 'long'
            result = protocol.read_i64;
          when 'double'
            result = protocol.read_double;
          when 'timestamp'
            throw 'TIMESTAMP NEUMIME'
          else
            result = protocol.read_string;
          end
          results << result
          break if value_bits == 0
        end
      end
      results
    end
  end
end
