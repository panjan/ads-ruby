require_relative '../thrift/gen-rb/jdbc_proxy'
require_relative 'connection'

module AdsRuby
  class Driver
    CLIENT_NAME = 'Experimental MRI Ruby ADS driver'
    VERSION = '3.0.0'
    PROTOCOLS = [6, 7, 8]
    def initialize
      @connection_string = 'datawarehouse02-stg3.wild.intgdc.com'
      socket = Thrift::SSLSocket.new(@connection_string, 9443)
      socket.ssl_context = OpenSSL::SSL::SSLContext.new
      socket.open
      protocol = Thrift::BinaryProtocol.new(socket)
      @client = JdbcProxy::Client.new(protocol)
    end

    def authenticate
      user = ENV['ADS_RUBY_LOGIN']
      pass = ENV['ADS_RUBY_PASS']

      options = AuthOptions.new('clientName' => CLIENT_NAME,
                                'clientVersion' => VERSION,
                                'supportedProtocolVersions' => PROTOCOLS,
                                'secretType' => SecretType::PASSWORD,
                                'params' => {},
                                'domainHostname' => 'staging3-lcm-prod.intgdc.com')

      result = @client.auth('a1e5ec27bf7e0506cc467e3a502187a0', user, pass, options)
      @connection = Connection.new(result.connectionId, @client)
    end

    def select(sql)
      statement = @connection.create_statement
      statement.execute_query(sql)
    end

    def update(sql)
      statement = @connection.create_statement
      statement.execute_update(sql)
    end
  end
end
