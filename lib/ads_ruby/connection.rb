require_relative '../thrift/gen-rb/jdbc_proxy'

module AdsRuby
  class Connection
    CLIENT_NAME = 'GoodData JDBC Driver'
    VERSION = '1.0.0'
    PROTOCOLS = [6, 7, 8]
    def initialize
      @connection_string = 'datawarehouse02-stg2.wild.intgdc.com'
      socket = Thrift::Socket.new(@connection_string, 9443)
      socket.open
      transport = Thrift::BinaryProtocol.new(socket)
      @client = JdbcProxy::Client.new(transport)
    end

    def authenticate
      user = 'rubydev+admin@gooddata.com'
      pass = ''

      options = AuthOptions.new('clientName' => CLIENT_NAME,
                                'clientVersion' => VERSION,
                                'supportedProtocolVersions' => PROTOCOLS,
                                'secretType' => SecretType::PASSWORD,
                                'params' => {},
                                'domainHostname' => @connection_string)

      @client.auth(@connection_string, user, pass, options)
    end
  end
end