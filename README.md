# BIMserverRubyAPI
Ruby API for BIMserver ( http://github.com/opensourceBIM/BIMserver )

This script uses the built in JSON interface of BIMserver.
All calls from the JSON interface are mapped to Ruby methods.

Example usage:

```ruby
# create connection object that connects to the server
conn = OpenSourceBIM::BIMserverAPI::Connection.new( 'http://localhost', '8082' )

# login on the server (internally defines a token that is automatically passed to all other methods to verify the user)
conn.login( username, password )

# list the names for all projects that exist on this server
conn.bimsie1_service_interface.getAllProjects( 'false', 'true' ).each do |project|
  puts project["name"] + ": " + project["oid"].to_s
end
```

For more possible calls check out the JSON documentation on your BIMserver
http://"bimserver"/admin/console.html
