require_relative '../thrift/gen-rb/jdbc_proxy'

module AdsRuby
  class Connection
    CLIENT_NAME = 'Experimental MRI Ruby ADS driver'
    VERSION = '3.0.0'
    PROTOCOLS = [6, 7, 8]
    def initialize
      @connection_string = 'datawarehouse02-stg2.wild.intgdc.com'
      socket = Thrift::SSLSocket.new(@connection_string, 9443)
      socket.ssl_context = OpenSSL::SSL::SSLContext.new
      socket.open
      transport = Thrift::BinaryProtocol.new(socket)
      @client = JdbcProxy::Client.new(transport)
    end

    def authenticate
      user = ENV['ADS_RUBY_LOGIN']
      pass = ENV['ADS_RUBY_PASS']

      options = AuthOptions.new('clientName' => CLIENT_NAME,
                                'clientVersion' => VERSION,
                                'supportedProtocolVersions' => PROTOCOLS,
                                'secretType' => SecretType::PASSWORD,
                                'params' => {},
                                'domainHostname' => @connection_string)

      @client.auth('a177a833944a6835c4d730a385c82c46', user, pass, options)
    end
  end
end
