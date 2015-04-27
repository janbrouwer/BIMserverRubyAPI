#  common.rb
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


module OpenSourceBIM
 module BIMserverAPI
  module Common
      
    # send message to BIMserver and get response
    def request( parameters, token=nil )
      
      if !self.name.is_a? String
        raise "No interface defined"
      end
      if !parameters.is_a? Hash
        raise "No parameters defined"
      end
      
      call = Hash.new
      
      
      # check for valid token
      #BIMserverAPI::TypeCheck::Token( result )
      
      # Add token to the request message
      if token
        call[:token] = token
      elsif @conn.token
        call[:token] = @conn.token
      end

      # !!! Hash written as symbols !!!
      call[:request] = {
        interface: self.name, # BIMserver interface (== the name of the current class)
        method: caller[0][/`.*'/][1..-2], # BIMserver method (== the name of the calling method)
        parameters: parameters
      }
    
      request_json = JSON.generate(call)
      response_json = @conn.http_connection.post(@conn.server.path, request_json)
      response = JSON.parse (response_json.body)
      
      # Raise error if exception is found
      raise response['response']['exception']['__type'] + ": " + response['response']['exception']['message'] if response['response']['exception']
      
      # return result if found
      if response['response']['result']
        response['response']['result']
      else
        raise "No response from server"
      end
      
    end # def base_request
  end # module Common
 end # BIMserver
end # module OpenSourceBIM
