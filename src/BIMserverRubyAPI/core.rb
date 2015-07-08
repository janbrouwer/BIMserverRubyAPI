#  core.rb
#  
#  Copyright 2015 Jan Brouwer <jan@brewsky.nl>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  

# BIMserver connection

require 'uri'
require 'net/http'
require 'JSON'
require 'base64'

module OpenSourceBIM
 module BIMserverAPI

  PATH = File.dirname(__FILE__) unless defined? PATH
  require File.join( PATH, 'common.rb' )
  require File.join( PATH, 'JSONcalls.rb' )
  
  class Interface
    include Common
    def initialize(connection, interface)
      @conn = connection
      @name = interface
      
      # include module with name == interface
      self.class.send(:include, eval(interface))
    end # initialize
    def call( parameters )
      
      # check if parameters is a Hash?
      # check if logged in?
      
      # write Hash as symbols
      call = {
        token: @conn.token,
        request: {
          interface: self.class.name, # BIMserver interface (== the name of the current class)
          method: caller[0][/`.*'/][1..-2], # BIMserver method (== the name of the calling method)
          parameters: parameters
        }
      }
      
      response_json = @http_connection.post(@server.path, JSON.generate(call))
      response = JSON.parse (response_json.body)
      
      #check if a result was found
      if response["response"]["result"]
        result = response["response"]["result"]
        return result
      elsif response["response"]["exception"]["message"]
        raise StandardError, response["response"]["exception"]["message"]
        return false
      else
        raise
        return false
      end
      
    end # initialize
  end # class Interface
  
  class Connection
    attr_reader :token, :server, :http_connection, :service_interface, :admin_interface, :meta_interface, :settings_interface, :auth_interface, :plugin_interface, :bimsie1_service_interface, :bimsie1_notification_interface, :bimsie1_remoteService_interface, :bimsie1_auth_interface, :bimsie1_lowLevel_interface, :bimsie1_notificationRegistry_interface
    
    include Common
    
    # ??? Should token be publicly accessible ???
    
    # create class methods from all interface requests
    #include ServiceInterface
    #include AdminInterface
    #include MetaInterface
    #include SettingsInterface
    #include AuthInterface
    #include PluginInterface
    #include Bimsie1ServiceInterface
    #include Bimsie1NotificationInterface
    #include Bimsie1RemoteServiceInterface
    #include Bimsie1AuthInterface
    #include Bimsie1LowLevelInterface
    #include Bimsie1NotificationRegistryInterface

    def initialize(server, port)
      
      raise ArgumentError, 'Given value for "Adress" is not a valid URL' unless URI.parse(server).kind_of?(URI::HTTP)
      raise ArgumentError, 'Given value for "Port" is not a valid port number' if port.to_i == 0

      @service_interface                      = Interface.new( self, "ServiceInterface" )
      @admin_interface                        = Interface.new( self, "AdminInterface" )
      @meta_interface                         = Interface.new( self, "MetaInterface" )
      @settings_interface                     = Interface.new( self, "SettingsInterface" )
      @auth_interface                         = Interface.new( self, "AuthInterface" )
      @plugin_interface                       = Interface.new( self, "PluginInterface" )
      @bimsie1_service_interface              = Interface.new( self, "Bimsie1ServiceInterface" )
      @bimsie1_notification_interface         = Interface.new( self, "Bimsie1NotificationInterface" )
      @bimsie1_remoteService_interface        = Interface.new( self, "Bimsie1RemoteServiceInterface" )
      @bimsie1_auth_interface                 = Interface.new( self, "Bimsie1AuthInterface" )
      @bimsie1_lowLevel_interface             = Interface.new( self, "Bimsie1LowLevelInterface" )
      @bimsie1_notificationRegistry_interface = Interface.new( self, "Bimsie1NotificationRegistryInterface" )
      
      # BIMserver parameters
      @server = URI(server + ":" + port + "/json")
      
      # create http connection to BIMserver
      @http_connection = Net::HTTP.new(@server.host, @server.port)
      @http_connection.use_ssl = false ### NEEDS WORK ###
    end # def initialize

    ### Wrapper for bimsie1_auth_interface.login that stores the resulting token in the connection for subsequent calls
    # Description: Login with a username/password combination
    # Arguments:
    #   username: The username (must be a valid e-mail address) ( String )
    #   password: The password ( String )
    # Returns: A token
    def login( username, password )
      
      result = self.bimsie1_auth_interface.login( username, password )
      
      # check for valid token
      #BIMserverAPI::TypeCheck::Token( result )
      
      # temporary check
      @token = result if result.is_a? String
      
      return result

    end # def login
    
  end # class Connection
 end # BIMserverAPI
end # module OpenSourceBIM
