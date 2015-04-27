#  JSONcalls.rb
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
#  auto-generated JSON calls

 module BIMserverAPI
  module ServiceInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.bimserver.ServiceInterface'
    @simple_name = 'ServiceInterface'

    # Arguments:
    #   extendedDataSchema: ExtendedDataSchema to add ( SExtendedDataSchema )
    def addExtendedDataSchema( extendedDataSchema )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SExtendedDataSchema( extendedDataSchema )

      # BIMserver request
      request( { extendedDataSchema: extendedDataSchema } )
    end # def addExtendedDataSchema

    # Arguments:
    #   poid ( Long )
    #   extendedData: ExtendedData to add ( SExtendedData )
    def addExtendedDataToProject( poid, extendedData )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::SExtendedData( extendedData )

      # BIMserver request
      request( { poid: poid, extendedData: extendedData } )
    end # def addExtendedDataToProject

    # Arguments:
    #   poid ( Long )
    #   sService ( SService )
    #   internalServiceOid ( Long )
    def addLocalServiceToProject( poid, sService, internalServiceOid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::SService( sService )
      #BIMserverAPI::TypeCheck::Long( internalServiceOid )

      # BIMserver request
      request( { poid: poid, sService: sService, internalServiceOid: internalServiceOid } )
    end # def addLocalServiceToProject

    # Arguments:
    #   modelCheckerInstance ( SModelCheckerInstance )
    def addModelChecker( modelCheckerInstance )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SModelCheckerInstance( modelCheckerInstance )

      # BIMserver request
      request( { modelCheckerInstance: modelCheckerInstance } )
    end # def addModelChecker

    # Arguments:
    #   poid ( Long )
    #   modelCheckerOid ( Long )
    def addModelCheckerToProject( poid, modelCheckerOid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( modelCheckerOid )

      # BIMserver request
      request( { poid: poid, modelCheckerOid: modelCheckerOid } )
    end # def addModelCheckerToProject

    # Arguments:
    #   poid ( Long )
    #   sService ( SService )
    def addServiceToProject( poid, sService )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::SService( sService )

      # BIMserver request
      request( { poid: poid, sService: sService } )
    end # def addServiceToProject

    # Description: Add a new user
    # Arguments:
    #   username: The username (must be a valid e-mail address) ( String )
    #   name: The name (e.g. "Bill Gates") ( String )
    #   type: Type of user ( SUserType )
    #   selfRegistration: Whether this is a self-registration (for example e-mails will be different) ( Boolean )
    #   resetUrl ( String )
    # Returns: The ObjectID of the created User object
    def addUser( username, name, type, selfRegistration, resetUrl )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( username )
      #BIMserverAPI::TypeCheck::String( name )
      #BIMserverAPI::TypeCheck::SUserType( type )
      #BIMserverAPI::TypeCheck::Boolean( selfRegistration )
      #BIMserverAPI::TypeCheck::String( resetUrl )

      # BIMserver request
      request( { username: username, name: name, type: type, selfRegistration: selfRegistration, resetUrl: resetUrl } )
    end # def addUser

    # Arguments:
    #   uoid: ObjectID of the User ( Long )
    #   edsid: ObjectID of the ExtendedDataSchema ( Long )
    def addUserToExtendedDataSchema( uoid, edsid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )
      #BIMserverAPI::TypeCheck::Long( edsid )

      # BIMserver request
      request( { uoid: uoid, edsid: edsid } )
    end # def addUserToExtendedDataSchema

    # Description: Add a user to a project (authorization wise)
    # Arguments:
    #   uoid: The ObejctID of the User ( Long )
    #   poid: The ObjectID of the Project ( Long )
    # Returns: Whether the User has been added to the Project
    def addUserToProject( uoid, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { uoid: uoid, poid: poid } )
    end # def addUserToProject

    # Description: Add a new user
    # Arguments:
    #   username: The username (must be a valid e-mail address) ( String )
    #   password ( String )
    #   name: The name (e.g. "Bill Gates") ( String )
    #   type: Type of user ( SUserType )
    #   selfRegistration: Whether this is a self-registration (for example e-mails will be different) ( Boolean )
    #   resetUrl ( String )
    # Returns: The ObjectID of the created User object
    def addUserWithPassword( username, password, name, type, selfRegistration, resetUrl )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( username )
      #BIMserverAPI::TypeCheck::String( password )
      #BIMserverAPI::TypeCheck::String( name )
      #BIMserverAPI::TypeCheck::SUserType( type )
      #BIMserverAPI::TypeCheck::Boolean( selfRegistration )
      #BIMserverAPI::TypeCheck::String( resetUrl )

      # BIMserver request
      request( { username: username, password: password, name: name, type: type, selfRegistration: selfRegistration, resetUrl: resetUrl } )
    end # def addUserWithPassword

    # Description: Change the type of a user
    # Arguments:
    #   uoid: The User's ObjectID ( Long )
    #   userType: The new type ( SUserType )
    def changeUserType( uoid, userType )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )
      #BIMserverAPI::TypeCheck::SUserType( userType )

      # BIMserver request
      request( { uoid: uoid, userType: userType } )
    end # def changeUserType

    # Description: Checkin a new model by sending a serialized form
    # Arguments:
    #   poid: The Project's ObjectID ( Long )
    #   comment: A comment ( String )
    #   deserializerOid: ObjectId of the deserializer to use, use getAllDeserializers to get a list of available deserializers ( Long )
    #   fileSize: The size of the file in bytes ( Long )
    #   fileName ( String )
    #   data ( DataHandler )
    #   merge: Whether to use checkin merging (this will alter your model!) ( Boolean )
    #   sync: Whether the call should return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: An id, which you can use for the getCheckinState method
    def checkin( poid, comment, deserializerOid, fileSize, fileName, data, merge, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::String( comment )
      #BIMserverAPI::TypeCheck::Long( deserializerOid )
      #BIMserverAPI::TypeCheck::Long( fileSize )
      #BIMserverAPI::TypeCheck::String( fileName )
      #BIMserverAPI::TypeCheck::DataHandler( data )
      #BIMserverAPI::TypeCheck::Boolean( merge )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { poid: poid, comment: comment, deserializerOid: deserializerOid, fileSize: fileSize, fileName: fileName, data: data, merge: merge, sync: sync } )
    end # def checkin

    # Description: Checkin a new model by sending a serialized form
    # Arguments:
    #   poid: The Project's ObjectID ( Long )
    #   comment: A comment ( String )
    #   deserializerOid: ObjectId of the deserializer to use, use getAllDeserializers to get a list of available deserializers ( Long )
    #   fileName ( String )
    #   url: A URL to the file ( String )
    #   merge: Whether to use checkin merging (this will alter your model!) ( Boolean )
    #   sync: Whether the call should return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: An id, which you can use for the getCheckinState method
    def checkinFromUrl( poid, comment, deserializerOid, fileName, url, merge, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::String( comment )
      #BIMserverAPI::TypeCheck::Long( deserializerOid )
      #BIMserverAPI::TypeCheck::String( fileName )
      #BIMserverAPI::TypeCheck::String( url )
      #BIMserverAPI::TypeCheck::Boolean( merge )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { poid: poid, comment: comment, deserializerOid: deserializerOid, fileName: fileName, url: url, merge: merge, sync: sync } )
    end # def checkinFromUrl

    # Arguments:
    #   actionId ( Long )
    def cleanupLongAction( actionId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( actionId )

      # BIMserver request
      request( { actionId: actionId } )
    end # def cleanupLongAction

    # Description: Compare two models
    # Arguments:
    #   roid1: The ObjectID of the first Revision ( Long )
    #   roid2: The ObjectID of the second Revision ( Long )
    #   sCompareType: How to compare (All, Only Added, Only Modified or Only Deleted) ( SCompareType )
    #   mcid ( Long )
    # Returns: The result of the compare
    def compare( roid1, roid2, sCompareType, mcid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid1 )
      #BIMserverAPI::TypeCheck::Long( roid2 )
      #BIMserverAPI::TypeCheck::SCompareType( sCompareType )
      #BIMserverAPI::TypeCheck::Long( mcid )

      # BIMserver request
      request( { roid1: roid1, roid2: roid2, sCompareType: sCompareType, mcid: mcid } )
    end # def compare

    # Arguments:
    #   oid ( Long )
    def deleteService( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def deleteService

    # Description: Delete a User, Users van be undeleted with the undeleteUser method
    # Arguments:
    #   uoid: ObjectID of the User ( Long )
    # Returns: Whether the User has been deleted
    def deleteUser( uoid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )

      # BIMserver request
      request( { uoid: uoid } )
    end # def deleteUser

    # Description: Download a compare of a model
    # Arguments:
    #   serializerOid ( Long )
    #   roid1 ( Long )
    #   roid2 ( Long )
    #   mcid ( Long )
    #   type ( SCompareType )
    #   sync ( Boolean )
    # Returns: An id, which you can use for the getDownloadState and getDownloadData methods
    def downloadCompareResults( serializerOid, roid1, roid2, mcid, type, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( serializerOid )
      #BIMserverAPI::TypeCheck::Long( roid1 )
      #BIMserverAPI::TypeCheck::Long( roid2 )
      #BIMserverAPI::TypeCheck::Long( mcid )
      #BIMserverAPI::TypeCheck::SCompareType( type )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { serializerOid: serializerOid, roid1: roid1, roid2: roid2, mcid: mcid, type: type, sync: sync } )
    end # def downloadCompareResults

    # Arguments:
    #   poid ( Long )
    # Returns: A list of all users authorized on the given project
    def getAllAuthorizedUsersOfProject( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getAllAuthorizedUsersOfProject

    # Arguments:
    #   uoid: ObjectID of the User ( Long )
    # Returns: A list of Checkouts belonging to the given User
    def getAllCheckoutsByUser( uoid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )

      # BIMserver request
      request( { uoid: uoid } )
    end # def getAllCheckoutsByUser

    # Arguments:
    #   poid: The ObjectID of the Project ( Long )
    # Returns: A list of Checkouts belonging to this Project
    def getAllCheckoutsOfProject( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getAllCheckoutsOfProject

    # Arguments:
    #   poid ( Long )
    def getAllCheckoutsOfProjectAndSubProjects( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getAllCheckoutsOfProjectAndSubProjects

    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    # Returns: A list of Checkouts belonging to the given Revision
    def getAllCheckoutsOfRevision( roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { roid: roid } )
    end # def getAllCheckoutsOfRevision

    # Arguments:
    # Returns: A list of ExtendedDataSchemas
    def getAllExtendedDataSchemas(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllExtendedDataSchemas

    # Arguments:
    #   serviceIdentifier ( String )
    def getAllLocalProfiles( serviceIdentifier )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( serviceIdentifier )

      # BIMserver request
      request( { serviceIdentifier: serviceIdentifier } )
    end # def getAllLocalProfiles

    # Arguments:
    def getAllLocalServiceDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllLocalServiceDescriptors

    # Arguments:
    def getAllModelCheckers(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllModelCheckers

    # Arguments:
    #   poid ( Long )
    def getAllModelCheckersOfProject( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getAllModelCheckersOfProject

    # Description: Get a list of all Projects the given User does not have authorization for
    # Arguments:
    #   uoid ( Long )
    # Returns: The list of Users
    def getAllNonAuthorizedProjectsOfUser( uoid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )

      # BIMserver request
      request( { uoid: uoid } )
    end # def getAllNonAuthorizedProjectsOfUser

    # Description: Get a list of all Users not authoriazed on the given Project
    # Arguments:
    #   poid: The ObjectID of the Project ( Long )
    # Returns: A list of Users
    def getAllNonAuthorizedUsersOfProject( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getAllNonAuthorizedUsersOfProject

    # Arguments:
    #   notificationsUrl ( String )
    #   serviceIdentifier ( String )
    #   token ( String )
    def getAllPrivateProfiles( notificationsUrl, serviceIdentifier, token )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( notificationsUrl )
      #BIMserverAPI::TypeCheck::String( serviceIdentifier )
      #BIMserverAPI::TypeCheck::String( token )

      # BIMserver request
      request( { notificationsUrl: notificationsUrl, serviceIdentifier: serviceIdentifier, token: token } )
    end # def getAllPrivateProfiles

    # Arguments:
    #   notificationsUrl ( String )
    #   serviceIdentifier ( String )
    def getAllPublicProfiles( notificationsUrl, serviceIdentifier )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( notificationsUrl )
      #BIMserverAPI::TypeCheck::String( serviceIdentifier )

      # BIMserver request
      request( { notificationsUrl: notificationsUrl, serviceIdentifier: serviceIdentifier } )
    end # def getAllPublicProfiles

    # Description: Get a list of all Projects the user is authorized for to read from
    # Arguments:
    # Returns: A list of all projects that are readable for the current user
    def getAllReadableProjects(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllReadableProjects

    # Arguments:
    #   poid ( Long )
    def getAllRelatedProjects( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getAllRelatedProjects

    # Arguments:
    def getAllRepositoryExtendedDataSchemas(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllRepositoryExtendedDataSchemas

    # Arguments:
    def getAllRepositoryModelCheckers(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllRepositoryModelCheckers

    # Arguments:
    #   uoid: ObjectID of the Project ( Long )
    # Returns: A list of Revisions belonging to this Project
    def getAllRevisionsByUser( uoid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )

      # BIMserver request
      request( { uoid: uoid } )
    end # def getAllRevisionsByUser

    # Arguments:
    def getAllServiceDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllServiceDescriptors

    # Arguments:
    #   poid ( Long )
    def getAllServicesOfProject( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getAllServicesOfProject

    # Arguments:
    def getAllUsers(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllUsers

    # Description: Get a list of all Projects the user is authorized for to write to
    # Arguments:
    # Returns: A list of all projects that are writeable for the current user
    def getAllWritableProjects(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllWritableProjects

    # Arguments:
    # Returns: A list of available classes in the BIMserver, only classes from the IFC model will be returned
    def getAvailableClasses(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAvailableClasses

    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    # Returns: A list of classes of which a least one instance is available in the given Revision
    def getAvailableClassesInRevision( roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { roid: roid } )
    end # def getAvailableClassesInRevision

    # Description: Checkin warnings are given to users
    # Arguments:
    #   poid: ObjectID of the Project ( Long )
    # Returns: A set of String containing possible warnings for this Project
    def getCheckinWarnings( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getCheckinWarnings

    # Description: Checkout warnings are given to users when checkouts are done by other users
    # Arguments:
    #   poid: ObjectID of the Project ( Long )
    # Returns: A set of String containing possible warnings for this Project
    def getCheckoutWarnings( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getCheckoutWarnings

    # Arguments:
    #   namespace ( String )
    def getExtendedDataSchemaFromRepository( namespace )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( namespace )

      # BIMserver request
      request( { namespace: namespace } )
    end # def getExtendedDataSchemaFromRepository

    # Arguments:
    #   fileId ( Long )
    def getFile( fileId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( fileId )

      # BIMserver request
      request( { fileId: fileId } )
    end # def getFile

    # Arguments:
    #   goid: The ObjectID of the GeoTag ( Long )
    # Returns: The GeoTag object
    def getGeoTag( goid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( goid )

      # BIMserver request
      request( { goid: goid } )
    end # def getGeoTag

    # Arguments:
    #   mcioid ( Long )
    def getModelCheckerInstance( mcioid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( mcioid )

      # BIMserver request
      request( { mcioid: mcioid } )
    end # def getModelCheckerInstance

    # Arguments:
    #   roid ( Long )
    #   guid ( String )
    def getOidByGuid( roid, guid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::String( guid )

      # BIMserver request
      request( { roid: roid, guid: guid } )
    end # def getOidByGuid

    # Arguments:
    #   qeid ( Long )
    #   key ( String )
    # Returns: A list of QueryEngines
    def getQueryEngineExample( qeid, key )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( qeid )
      #BIMserverAPI::TypeCheck::String( key )

      # BIMserver request
      request( { qeid: qeid, key: key } )
    end # def getQueryEngineExample

    # Arguments:
    #   qeid ( Long )
    # Returns: A list of QueryEngines
    def getQueryEngineExampleKeys( qeid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( qeid )

      # BIMserver request
      request( { qeid: qeid } )
    end # def getQueryEngineExampleKeys

    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    # Returns: A summary of the given Revision
    def getRevisionSummary( roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { roid: roid } )
    end # def getRevisionSummary

    # Arguments:
    #   soid ( Long )
    def getService( soid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( soid )

      # BIMserver request
      request( { soid: soid } )
    end # def getService

    # Arguments:
    #   baseUrl ( String )
    #   serviceIdentifier ( String )
    def getServiceDescriptor( baseUrl, serviceIdentifier )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( baseUrl )
      #BIMserverAPI::TypeCheck::String( serviceIdentifier )

      # BIMserver request
      request( { baseUrl: baseUrl, serviceIdentifier: serviceIdentifier } )
    end # def getServiceDescriptor

    # Arguments:
    #   uoid: The ObjectID of the User ( Long )
    # Returns: The User with the given User ObjectID
    def getUserByUoid( uoid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )

      # BIMserver request
      request( { uoid: uoid } )
    end # def getUserByUoid

    # Description: Get a User by its UserNmae (e-mail address)
    # Arguments:
    #   username: The username (must be a valid e-mail address) ( String )
    # Returns: The SUser Object if found, otherwise null
    def getUserByUserName( username )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( username )

      # BIMserver request
      request( { username: username } )
    end # def getUserByUserName

    # Arguments:
    #   uoid ( Long )
    def getUserRelatedLogs( uoid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )

      # BIMserver request
      request( { uoid: uoid } )
    end # def getUserRelatedLogs

    # Arguments:
    def getUserSettings(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getUserSettings

    # Arguments:
    #   uoid ( Long )
    # Returns: A list of projects a user has been authorized for
    def getUsersProjects( uoid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )

      # BIMserver request
      request( { uoid: uoid } )
    end # def getUsersProjects

    # Arguments:
    #   poid ( Long )
    #   modelCheckerOid ( Long )
    def removeModelCheckerFromProject( poid, modelCheckerOid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( modelCheckerOid )

      # BIMserver request
      request( { poid: poid, modelCheckerOid: modelCheckerOid } )
    end # def removeModelCheckerFromProject

    # Arguments:
    #   uoid: ObjectID of the User ( Long )
    #   edsid: ObjectID of the ExtendedDataSchema ( Long )
    def removeUserFromExtendedDataSchema( uoid, edsid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )
      #BIMserverAPI::TypeCheck::Long( edsid )

      # BIMserver request
      request( { uoid: uoid, edsid: edsid } )
    end # def removeUserFromExtendedDataSchema

    # Description: Remove a user from a project (authorization wise)
    # Arguments:
    #   uoid: ObjectID of the User ( Long )
    #   poid: ObjectID of the Project ( Long )
    # Returns: Whether the User has been removed from the Project
    def removeUserFromProject( uoid, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { uoid: uoid, poid: poid } )
    end # def removeUserFromProject

    # Description: Send an e-mail with the results of a compare
    # Arguments:
    #   sCompareType: How to compare (All, Only Added, Only Modified or Only Deleted) ( SCompareType )
    #   mcid ( Long )
    #   poid: The ObjectID of the Project ( Long )
    #   roid1: The ObjectID of the first Revision ( Long )
    #   roid2: The ObjectID of the second Revision ( Long )
    #   address: The e-mail address to send the e-mail to ( String )
    def sendCompareEmail( sCompareType, mcid, poid, roid1, roid2, address )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SCompareType( sCompareType )
      #BIMserverAPI::TypeCheck::Long( mcid )
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( roid1 )
      #BIMserverAPI::TypeCheck::Long( roid2 )
      #BIMserverAPI::TypeCheck::String( address )

      # BIMserver request
      request( { sCompareType: sCompareType, mcid: mcid, poid: poid, roid1: roid1, roid2: roid2, address: address } )
    end # def sendCompareEmail

    # Arguments:
    #   roid ( Long )
    #   tag ( String )
    def setRevisionTag( roid, tag )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::String( tag )

      # BIMserver request
      request( { roid: roid, tag: tag } )
    end # def setRevisionTag

    # Arguments:
    #   roid ( Long )
    def shareRevision( roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { roid: roid } )
    end # def shareRevision

    # Arguments:
    #   edid ( Long )
    #   soid ( Long )
    def triggerNewExtendedData( edid, soid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( edid )
      #BIMserverAPI::TypeCheck::Long( soid )

      # BIMserver request
      request( { edid: edid, soid: soid } )
    end # def triggerNewExtendedData

    # Arguments:
    #   roid ( Long )
    #   soid ( Long )
    def triggerNewRevision( roid, soid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( soid )

      # BIMserver request
      request( { roid: roid, soid: soid } )
    end # def triggerNewRevision

    # Description: Undelete a previously deleted User, Users can be deleted with the deleteUser method
    # Arguments:
    #   uoid ( Long )
    # Returns: Whether the deletion was successfull
    def undeleteUser( uoid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )

      # BIMserver request
      request( { uoid: uoid } )
    end # def undeleteUser

    # Arguments:
    #   sGeoTag: A GeoTag object containing the new properties ( SGeoTag )
    def updateGeoTag( sGeoTag )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SGeoTag( sGeoTag )

      # BIMserver request
      request( { sGeoTag: sGeoTag } )
    end # def updateGeoTag

    # Arguments:
    #   modelCheckerInstance ( SModelCheckerInstance )
    def updateModelChecker( modelCheckerInstance )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SModelCheckerInstance( modelCheckerInstance )

      # BIMserver request
      request( { modelCheckerInstance: modelCheckerInstance } )
    end # def updateModelChecker

    # Description: Update project properties, the only three properties that can be updated with this call are "name", "description" and "exportLengthMeasurePrefix"
    # Arguments:
    #   sProject: A Project object containing the new properties ( SProject )
    def updateProject( sProject )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SProject( sProject )

      # BIMserver request
      request( { sProject: sProject } )
    end # def updateProject

    # Description: Update a revision, not much can be changed afterwards, actually only the tag
    # Arguments:
    #   sRevision: The Revision object containing the new properties ( SRevision )
    def updateRevision( sRevision )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SRevision( sRevision )

      # BIMserver request
      request( { sRevision: sRevision } )
    end # def updateRevision

    # Arguments:
    #   file ( SFile )
    def uploadFile( file )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SFile( file )

      # BIMserver request
      request( { file: file } )
    end # def uploadFile

    # Arguments:
    #   uoid ( Long )
    #   poid: ObjectID of the Project ( Long )
    # Returns: Whether the current use has checkin rights on the given Project
    def userHasCheckinRights( uoid, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { uoid: uoid, poid: poid } )
    end # def userHasCheckinRights

    # Arguments:
    #   poid: ObjectID of the Project ( Long )
    # Returns: Whether the current User has rights on the given Project
    def userHasRights( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def userHasRights

    # Arguments:
    #   oid ( Long )
    def validateModelChecker( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def validateModelChecker
    end
  module AdminInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.bimserver.AdminInterface'
    @simple_name = 'AdminInterface'

    # Description: Initiate clearing the output cache
    # Arguments:
    # Returns: The amount of removed files
    def clearOutputFileCache(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def clearOutputFileCache

    # Description: Disable a plugin
    # Arguments:
    #   name: Name of the plugin to disable ( String )
    def disablePlugin( name )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( name )

      # BIMserver request
      request( { name: name } )
    end # def disablePlugin

    # Description: Enable a plugin
    # Arguments:
    #   name: Name of the plugin to enable ( String )
    def enablePlugin( name )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( name )

      # BIMserver request
      request( { name: name } )
    end # def enablePlugin

    # Description: Get a list of all plugins
    # Arguments:
    # Returns: A list of all plugins
    def getAllPlugins(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllPlugins

    # Description: Get information about this BIMserver
    # Arguments:
    # Returns: A SBimServerInfo object
    def getBimServerInfo(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getBimServerInfo

    # Description: Get information about the BIMserver database
    # Arguments:
    # Returns: A SDatabaseInformation Object containing the information
    def getDatabaseInformation(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getDatabaseInformation

    # Description: Get information about the Java environment this BIMserver is running on
    # Arguments:
    # Returns: A SJavaInfo object
    def getJavaInfo(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getJavaInfo

    # Description: Get information about the last database reset
    # Arguments:
    # Returns: When the last database reset occurred
    def getLastDatabaseReset(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getLastDatabaseReset

    # Description: Check which version of BIMserver is the latest available (will download an XML file from bimserver.org)
    # Arguments:
    # Returns: A SVersion object containing the version information
    def getLatestVersion(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getLatestVersion

    # Description: Get a list of logged actions
    # Arguments:
    # Returns: A list with all Log objects, Log objects contain information about action performed on the BIMserver like ProjectAdded, UserAdded etc...
    def getLogs(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getLogs

    # Description: Get a list of all migrations
    # Arguments:
    # Returns: A list of all Migrations (either executed or not)
    def getMigrations(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getMigrations

    # Description: This will return the content of the .proto file (equivalent for SOAP's WSDL) for the ProtocolBuffers interface
    # Arguments:
    #   interfaceName ( String )
    # Returns: A serialized version of the .proto file
    def getProtocolBuffersFile( interfaceName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( interfaceName )

      # BIMserver request
      request( { interfaceName: interfaceName } )
    end # def getProtocolBuffersFile

    # Description: Get information about this BIMserver's state
    # Arguments:
    # Returns: A SServerInfo object containing information about the current state
    def getServerInfo(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getServerInfo

    # Description: Get the BIMserver log
    # Arguments:
    # Returns: The BIMserver log (can be big)
    def getServerLog(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getServerLog

    # Description: Get the date when this BIMserver was last started
    # Arguments:
    # Returns: The Date when the BIMserver was last started
    def getServerStartTime(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getServerStartTime

    # Description: Get information about the system this BIMserver is running on
    # Arguments:
    # Returns: A SSystemInfo object
    def getSystemInfo(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getSystemInfo

    # Description: Get the actual version of this BIMserver
    # Arguments:
    # Returns: A SVersion object containg the version information
    def getVersion(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getVersion

    # Description: This will try to upgrade the database to the latest revision, this method will do nothing if the database schema is already up-to-date
    # Arguments:
    def migrateDatabase(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def migrateDatabase

    # Description: Regenerate the geometry for a specified croid
    # Arguments:
    #   croid ( Long )
    def regenerateGeometry( croid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( croid )

      # BIMserver request
      request( { croid: croid } )
    end # def regenerateGeometry

    # Description: Setup this BIMserver. This BIMserver will not be available until you execute this method successfully. You can only do this once. After initial setup, use the methods provided by the SettingsInterface to change values.
    # Arguments:
    #   siteAddress: The address the server will be reachable at (for example: http://demo.bimserver.org) ( String )
    #   smtpServer: The address of the SMTP server that wil be used for sending e-mails ( String )
    #   smtpSender ( String )
    #   adminName: Name of the admin User (e.g. "Administrator") ( String )
    #   adminUsername: Username of the admin User (must be a valid e-mail address) ( String )
    #   adminPassword: Password of the admin User ( String )
    def setup( siteAddress, smtpServer, smtpSender, adminName, adminUsername, adminPassword )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( siteAddress )
      #BIMserverAPI::TypeCheck::String( smtpServer )
      #BIMserverAPI::TypeCheck::String( smtpSender )
      #BIMserverAPI::TypeCheck::String( adminName )
      #BIMserverAPI::TypeCheck::String( adminUsername )
      #BIMserverAPI::TypeCheck::String( adminPassword )

      # BIMserver request
      request( { siteAddress: siteAddress, smtpServer: smtpServer, smtpSender: smtpSender, adminName: adminName, adminUsername: adminUsername, adminPassword: adminPassword } )
    end # def setup

    # Description: Check whether an upgrade of the BIMserver is available (will download an XML file from bimserver.org)
    # Arguments:
    # Returns: Whether a new version is available
    def upgradePossible(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def upgradePossible
    end
  module MetaInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.bimserver.MetaInterface'
    @simple_name = 'MetaInterface'

    # Arguments:
    def getAllAsJson(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllAsJson

    # Arguments:
    #   enumName ( String )
    def getEnumLiterals( enumName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( enumName )

      # BIMserver request
      request( { enumName: enumName } )
    end # def getEnumLiterals

    # Arguments:
    #   getServiceInterface ( String )
    # Returns: A list of all the registered services
    def getServiceInterface( getServiceInterface )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( getServiceInterface )

      # BIMserver request
      request( { getServiceInterface: getServiceInterface } )
    end # def getServiceInterface

    # Arguments:
    # Returns: A list of all the registered services
    def getServiceInterfaces(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getServiceInterfaces

    # Arguments:
    #   serviceInterfaceName ( String )
    #   methodName ( String )
    # Returns: A list of all methods of the given service
    def getServiceMethod( serviceInterfaceName, methodName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( serviceInterfaceName )
      #BIMserverAPI::TypeCheck::String( methodName )

      # BIMserver request
      request( { serviceInterfaceName: serviceInterfaceName, methodName: methodName } )
    end # def getServiceMethod

    # Arguments:
    #   serviceInterfaceName ( String )
    #   serviceMethodName ( String )
    # Returns: A list of all parameters of the given method of the given service
    def getServiceMethodParameters( serviceInterfaceName, serviceMethodName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( serviceInterfaceName )
      #BIMserverAPI::TypeCheck::String( serviceMethodName )

      # BIMserver request
      request( { serviceInterfaceName: serviceInterfaceName, serviceMethodName: serviceMethodName } )
    end # def getServiceMethodParameters

    # Arguments:
    #   serviceInterfaceName ( String )
    # Returns: A list of all methods of the given service
    def getServiceMethods( serviceInterfaceName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( serviceInterfaceName )

      # BIMserver request
      request( { serviceInterfaceName: serviceInterfaceName } )
    end # def getServiceMethods

    # Arguments:
    # Returns: A list of all types known for the given service
    def getServiceTypes(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getServiceTypes
    end
  module SettingsInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.bimserver.SettingsInterface'
    @simple_name = 'SettingsInterface'

    # Arguments:
    # Returns: The current address used for sending e-mails
    def getEmailSenderAddress(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getEmailSenderAddress

    # Arguments:
    # Returns: The port on which the ProtocolBuffers server runs
    def getProtocolBuffersPort(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getProtocolBuffersPort

    # Arguments:
    # Returns: The current server settings
    def getServerSettings(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getServerSettings

    # Arguments:
    # Returns: The current service repository server address
    def getServiceRepositoryUrl(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getServiceRepositoryUrl

    # Arguments:
    # Returns: The address the BIMserver is running on (used for links in e-mail for example)
    def getSiteAddress(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getSiteAddress

    # Arguments:
    # Returns: Address of the SMTP server used for sending e-mails
    def getSmtpServer(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getSmtpServer

    # Arguments:
    # Returns: Whether self-registration is enabled
    def isAllowSelfRegistration(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def isAllowSelfRegistration

    # Arguments:
    # Returns: Whether a user can create top level projects
    def isAllowUsersToCreateTopLevelProjects(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def isAllowUsersToCreateTopLevelProjects

    # Arguments:
    # Returns: Whether output files (serialized version) should be cached on disk
    def isCacheOutputFiles(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def isCacheOutputFiles

    # Arguments:
    # Returns: Whether the BIMserver should do checkin merging (warning: this will alter your models)
    def isCheckinMergingEnabled(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def isCheckinMergingEnabled

    # Arguments:
    # Returns: Whether output files (serialized version) should be cached on disk
    def isGenerateGeometryOnCheckin(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def isGenerateGeometryOnCheckin

    # Arguments:
    # Returns: Whether to hide user lists (pricacy)
    def isHideUserListForNonAdmin(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def isHideUserListForNonAdmin

    # Arguments:
    # Returns: Whether a confirmation e-mail should be send after registration
    def isSendConfirmationEmailAfterRegistration(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def isSendConfirmationEmailAfterRegistration

    # Arguments:
    #   allowSelfRegistration: Change whether self-registration is enabled ( Boolean )
    def setAllowSelfRegistration( allowSelfRegistration )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( allowSelfRegistration )

      # BIMserver request
      request( { allowSelfRegistration: allowSelfRegistration } )
    end # def setAllowSelfRegistration

    # Arguments:
    #   allowUsersToCreateTopLevelProjects: Set if users can create top level projects ( Boolean )
    def setAllowUsersToCreateTopLevelProjects( allowUsersToCreateTopLevelProjects )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( allowUsersToCreateTopLevelProjects )

      # BIMserver request
      request( { allowUsersToCreateTopLevelProjects: allowUsersToCreateTopLevelProjects } )
    end # def setAllowUsersToCreateTopLevelProjects

    # Arguments:
    #   cacheOutputFiles: Set whether output files (serialized version) should be cached on disk ( Boolean )
    def setCacheOutputFiles( cacheOutputFiles )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( cacheOutputFiles )

      # BIMserver request
      request( { cacheOutputFiles: cacheOutputFiles } )
    end # def setCacheOutputFiles

    # Arguments:
    #   checkinMergingEnabled: Set whether the BIMserver should do checkin merging (warning: this wil alter your models) ( Boolean )
    def setCheckinMergingEnabled( checkinMergingEnabled )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( checkinMergingEnabled )

      # BIMserver request
      request( { checkinMergingEnabled: checkinMergingEnabled } )
    end # def setCheckinMergingEnabled

    # Arguments:
    #   emailSenderAddress: The new e-mail address e-mail will be sent from ( String )
    def setEmailSenderAddress( emailSenderAddress )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( emailSenderAddress )

      # BIMserver request
      request( { emailSenderAddress: emailSenderAddress } )
    end # def setEmailSenderAddress

    # Arguments:
    #   generateGeometryOnCheckin ( Boolean )
    def setGenerateGeometryOnCheckin( generateGeometryOnCheckin )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( generateGeometryOnCheckin )

      # BIMserver request
      request( { generateGeometryOnCheckin: generateGeometryOnCheckin } )
    end # def setGenerateGeometryOnCheckin

    # Arguments:
    #   hideUserListForNonAdmin: Set whether user lists should be hidden (privacy) ( Boolean )
    def setHideUserListForNonAdmin( hideUserListForNonAdmin )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( hideUserListForNonAdmin )

      # BIMserver request
      request( { hideUserListForNonAdmin: hideUserListForNonAdmin } )
    end # def setHideUserListForNonAdmin

    # Arguments:
    #   port: Set the port the ProtocolBuffers server runs on ( Integer )
    def setProtocolBuffersPort( port )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Integer( port )

      # BIMserver request
      request( { port: port } )
    end # def setProtocolBuffersPort

    # Arguments:
    #   sendConfirmationEmailAfterRegistration: Set whether a confirmation e-mail should be send after registration ( Boolean )
    def setSendConfirmationEmailAfterRegistration( sendConfirmationEmailAfterRegistration )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( sendConfirmationEmailAfterRegistration )

      # BIMserver request
      request( { sendConfirmationEmailAfterRegistration: sendConfirmationEmailAfterRegistration } )
    end # def setSendConfirmationEmailAfterRegistration

    # Description: With this method you can set all server settings at once
    # Arguments:
    #   serverSettings ( SServerSettings )
    def setServerSettings( serverSettings )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SServerSettings( serverSettings )

      # BIMserver request
      request( { serverSettings: serverSettings } )
    end # def setServerSettings

    # Arguments:
    #   url: A new URL pointing to a server acting as a services repository ( String )
    def setServiceRepositoryUrl( url )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( url )

      # BIMserver request
      request( { url: url } )
    end # def setServiceRepositoryUrl

    # Arguments:
    #   siteAddress: The new address the BIMserver is running on (used for links in e-mail for example) ( String )
    def setSiteAddress( siteAddress )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( siteAddress )

      # BIMserver request
      request( { siteAddress: siteAddress } )
    end # def setSiteAddress

    # Arguments:
    #   smtpServer: New address of the SMTP server used for sending e-mails ( String )
    def setSmtpServer( smtpServer )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( smtpServer )

      # BIMserver request
      request( { smtpServer: smtpServer } )
    end # def setSmtpServer

    # Description: Sets the domains that are whitelisted to connect to the different API endpoints. This is only a CORS (http://en.wikipedia.org/wiki/Cross-origin_resource_sharing) protection
    # Arguments:
    #   domains ( List )
    def setWhiteListedDomains( domains )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::List( domains )

      # BIMserver request
      request( { domains: domains } )
    end # def setWhiteListedDomains
    end
  module AuthInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.bimserver.AuthInterface'
    @simple_name = 'AuthInterface'

    # Description: Change a User's password, not the preferred way, use requestPasswordChange for a safer version
    # Arguments:
    #   uoid: The ObjectID of the User ( Long )
    #   oldPassword: The old password ( String )
    #   newPassword: The new password ( String )
    # Returns: Whether the password was successfully changed
    def changePassword( uoid, oldPassword, newPassword )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )
      #BIMserverAPI::TypeCheck::String( oldPassword )
      #BIMserverAPI::TypeCheck::String( newPassword )

      # BIMserver request
      request( { uoid: uoid, oldPassword: oldPassword, newPassword: newPassword } )
    end # def changePassword

    # Arguments:
    # Returns: The User that it currently loggedin on this ServiceInterface
    def getLoggedInUser(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getLoggedInUser

    # Description: Request a password change, an e-mail will be send with a validation url
    # Arguments:
    #   username: The username of the user to change tot password for ( String )
    #   resetUrl ( String )
    def requestPasswordChange( username, resetUrl )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( username )
      #BIMserverAPI::TypeCheck::String( resetUrl )

      # BIMserver request
      request( { username: username, resetUrl: resetUrl } )
    end # def requestPasswordChange

    # Arguments:
    #   uoid: The ObejctID of the User ( Long )
    #   token: The token generated by requestPasswordChange ( String )
    #   password: The new password ( String )
    # Returns: A User object if the change is successful, null otherwise
    def validateAccount( uoid, token, password )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )
      #BIMserverAPI::TypeCheck::String( token )
      #BIMserverAPI::TypeCheck::String( password )

      # BIMserver request
      request( { uoid: uoid, token: token, password: password } )
    end # def validateAccount
    end
  module PluginInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.bimserver.PluginInterface'
    @simple_name = 'PluginInterface'

    # Arguments:
    #   deserializer: Deserializer to add ( SDeserializerPluginConfiguration )
    def addDeserializer( deserializer )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SDeserializerPluginConfiguration( deserializer )

      # BIMserver request
      request( { deserializer: deserializer } )
    end # def addDeserializer

    # Arguments:
    #   internalService ( SInternalServicePluginConfiguration )
    def addInternalService( internalService )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SInternalServicePluginConfiguration( internalService )

      # BIMserver request
      request( { internalService: internalService } )
    end # def addInternalService

    # Arguments:
    #   modelCompare: ModelCompare to add ( SModelComparePluginConfiguration )
    def addModelCompare( modelCompare )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SModelComparePluginConfiguration( modelCompare )

      # BIMserver request
      request( { modelCompare: modelCompare } )
    end # def addModelCompare

    # Arguments:
    #   modelMerger: ModelMerger to add ( SModelMergerPluginConfiguration )
    def addModelMerger( modelMerger )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SModelMergerPluginConfiguration( modelMerger )

      # BIMserver request
      request( { modelMerger: modelMerger } )
    end # def addModelMerger

    # Arguments:
    #   objectIDM: The ObjectIDM to add ( SObjectIDMPluginConfiguration )
    def addObjectIDM( objectIDM )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SObjectIDMPluginConfiguration( objectIDM )

      # BIMserver request
      request( { objectIDM: objectIDM } )
    end # def addObjectIDM

    # Arguments:
    #   queryEngine: QueryEngine to add ( SQueryEnginePluginConfiguration )
    def addQueryEngine( queryEngine )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SQueryEnginePluginConfiguration( queryEngine )

      # BIMserver request
      request( { queryEngine: queryEngine } )
    end # def addQueryEngine

    # Arguments:
    #   renderEngine: RenderEngine to add ( SRenderEnginePluginConfiguration )
    def addRenderEngine( renderEngine )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SRenderEnginePluginConfiguration( renderEngine )

      # BIMserver request
      request( { renderEngine: renderEngine } )
    end # def addRenderEngine

    # Arguments:
    #   serializer: Serializer to add ( SSerializerPluginConfiguration )
    def addSerializer( serializer )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SSerializerPluginConfiguration( serializer )

      # BIMserver request
      request( { serializer: serializer } )
    end # def addSerializer

    # Arguments:
    #   sid: ObjectID of the Deserializer to delete ( Long )
    def deleteDeserializer( sid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( sid )

      # BIMserver request
      request( { sid: sid } )
    end # def deleteDeserializer

    # Arguments:
    #   oid ( Long )
    def deleteInternalService( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def deleteInternalService

    # Arguments:
    #   iid: ObjectID of the ModelCompare to delete ( Long )
    def deleteModelChecker( iid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( iid )

      # BIMserver request
      request( { iid: iid } )
    end # def deleteModelChecker

    # Arguments:
    #   iid: ObjectID of the ModelCompare to delete ( Long )
    def deleteModelCompare( iid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( iid )

      # BIMserver request
      request( { iid: iid } )
    end # def deleteModelCompare

    # Arguments:
    #   iid: ObjectID of the ModelMerger to delete ( Long )
    def deleteModelMerger( iid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( iid )

      # BIMserver request
      request( { iid: iid } )
    end # def deleteModelMerger

    # Arguments:
    #   oid: ObjectID of the ObjectIDM to delete ( Long )
    def deleteObjectIDM( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def deleteObjectIDM

    # Arguments:
    #   iid: ObjectID of the QueryEngine to delete ( Long )
    def deleteQueryEngine( iid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( iid )

      # BIMserver request
      request( { iid: iid } )
    end # def deleteQueryEngine

    # Arguments:
    #   iid: ObjectID of the RenderEngine to delete ( Long )
    def deleteRenderEngine( iid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( iid )

      # BIMserver request
      request( { iid: iid } )
    end # def deleteRenderEngine

    # Arguments:
    #   sid: ObjectID of the Serializer to delete ( Long )
    def deleteSerializer( sid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( sid )

      # BIMserver request
      request( { sid: sid } )
    end # def deleteSerializer

    # Arguments:
    # Returns: List of all DeserializerPluginDescriptors
    def getAllDeserializerPluginDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllDeserializerPluginDescriptors

    # Arguments:
    #   onlyEnabled: Whether to only include enabled deserializers ( Boolean )
    # Returns: A list of all available deserializers
    def getAllDeserializers( onlyEnabled )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled } )
    end # def getAllDeserializers

    # Arguments:
    #   onlyEnabled: Whether to only include enabled deserializers ( Boolean )
    #   poid ( Long )
    # Returns: A list of all available deserializers
    def getAllDeserializersForProject( onlyEnabled, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled, poid: poid } )
    end # def getAllDeserializersForProject

    # Arguments:
    #   onlyEnabled ( Boolean )
    def getAllInternalServices( onlyEnabled )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled } )
    end # def getAllInternalServices

    # Arguments:
    # Returns: List of all SModelComparePluginDescriptor
    def getAllModelCheckerPluginDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllModelCheckerPluginDescriptors

    # Arguments:
    # Returns: List of all SModelComparePluginDescriptor
    def getAllModelComparePluginDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllModelComparePluginDescriptors

    # Arguments:
    #   onlyEnabled: Whether to only include enabled model compare ( Boolean )
    # Returns: A list of SModelCompare
    def getAllModelCompares( onlyEnabled )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled } )
    end # def getAllModelCompares

    # Arguments:
    # Returns: List of all SModelMergerPluginDescriptor
    def getAllModelMergerPluginDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllModelMergerPluginDescriptors

    # Arguments:
    #   onlyEnabled: Whether to only include enabled model mergers ( Boolean )
    # Returns: A list of SModelMerger
    def getAllModelMergers( onlyEnabled )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled } )
    end # def getAllModelMergers

    # Arguments:
    # Returns: A list of available IDMPlugins
    def getAllObjectIDMPluginDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllObjectIDMPluginDescriptors

    # Arguments:
    #   onlyEnabled: Whether to include only enabled ObjectIDMs ( Boolean )
    # Returns: A list of ObjectIDMs
    def getAllObjectIDMs( onlyEnabled )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled } )
    end # def getAllObjectIDMs

    # Arguments:
    # Returns: List of all QueryEnginePluginDescriptors
    def getAllQueryEnginePluginDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllQueryEnginePluginDescriptors

    # Arguments:
    #   onlyEnabled: Whether to only include enabled query engines ( Boolean )
    # Returns: A list of QueryEngines
    def getAllQueryEngines( onlyEnabled )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled } )
    end # def getAllQueryEngines

    # Arguments:
    # Returns: List of all SerializerPluginDescriptors
    def getAllRenderEnginePluginDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllRenderEnginePluginDescriptors

    # Arguments:
    #   onlyEnabled: Whether to only include enabled IFC engines ( Boolean )
    # Returns: A list of RenderEngines
    def getAllRenderEngines( onlyEnabled )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled } )
    end # def getAllRenderEngines

    # Arguments:
    # Returns: List of all SerializerPluginDescriptors
    def getAllSerializerPluginDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllSerializerPluginDescriptors

    # Arguments:
    #   onlyEnabled: Whether to only include enabled serializers ( Boolean )
    # Returns: A list of Serializers
    def getAllSerializers( onlyEnabled )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled } )
    end # def getAllSerializers

    # Arguments:
    #   onlyEnabled: Whether to only include enabled serializers ( Boolean )
    #   roids ( Set )
    # Returns: A list of Serializers
    def getAllSerializersForRoids( onlyEnabled, roids )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )
      #BIMserverAPI::TypeCheck::Set( roids )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled, roids: roids } )
    end # def getAllSerializersForRoids

    # Arguments:
    # Returns: List of all getAllServicePluginDescriptors
    def getAllServicePluginDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllServicePluginDescriptors

    # Arguments:
    # Returns: List of all SerializerPluginDescriptors
    def getAllWebModulePluginDescriptors(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllWebModulePluginDescriptors

    # Arguments:
    #   onlyEnabled: Whether to only include enabled IFC engines ( Boolean )
    # Returns: A list of RenderEngines
    def getAllWebModules( onlyEnabled )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyEnabled )

      # BIMserver request
      request( { onlyEnabled: onlyEnabled } )
    end # def getAllWebModules

    # Arguments:
    def getDefaultModelCompare(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getDefaultModelCompare

    # Arguments:
    def getDefaultModelMerger(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getDefaultModelMerger

    # Arguments:
    def getDefaultObjectIDM(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getDefaultObjectIDM

    # Arguments:
    def getDefaultQueryEngine(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getDefaultQueryEngine

    # Arguments:
    def getDefaultRenderEngine(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getDefaultRenderEngine

    # Arguments:
    def getDefaultSerializer(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getDefaultSerializer

    # Arguments:
    def getDefaultWebModule(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getDefaultWebModule

    # Arguments:
    #   oid ( Long )
    def getInternalServiceById( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getInternalServiceById

    # Arguments:
    #   pluginClassName ( String )
    # Returns: Serializer supporting the given ContentType
    def getMessagingSerializerByPluginClassName( pluginClassName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( pluginClassName )

      # BIMserver request
      request( { pluginClassName: pluginClassName } )
    end # def getMessagingSerializerByPluginClassName

    # Arguments:
    #   oid: ObjectID of the ModelCompare ( Long )
    # Returns: SModelCompare
    def getModelCompareById( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getModelCompareById

    # Arguments:
    #   name: Name of the ModelCompare ( String )
    # Returns: SModelCompare
    def getModelCompareByName( name )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( name )

      # BIMserver request
      request( { name: name } )
    end # def getModelCompareByName

    # Arguments:
    #   oid: ObjectID of the ModelMerger ( Long )
    # Returns: SModelMerger
    def getModelMergerById( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getModelMergerById

    # Arguments:
    #   name: Name of the ModelMerger ( String )
    # Returns: SModelMerger
    def getModelMergerByName( name )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( name )

      # BIMserver request
      request( { name: name } )
    end # def getModelMergerByName

    # Arguments:
    #   oid: ObjectID of the ObjectIDM ( Long )
    # Returns: ObjectIDM
    def getObjectIDMById( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getObjectIDMById

    # Arguments:
    #   objectIDMName: Name of the ObjectIDM ( String )
    # Returns: ObjectIDM
    def getObjectIDMByName( objectIDMName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( objectIDMName )

      # BIMserver request
      request( { objectIDMName: objectIDMName } )
    end # def getObjectIDMByName

    # Arguments:
    #   oid ( Long )
    def getPluginDescriptor( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getPluginDescriptor

    # Arguments:
    #   oid ( Long )
    def getPluginObjectDefinition( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getPluginObjectDefinition

    # Arguments:
    #   poid ( Long )
    def getPluginSettings( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getPluginSettings

    # Arguments:
    #   oid: ObjectID of the RenderEngine ( Long )
    # Returns: RenderEngine
    def getRenderEngineById( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getRenderEngineById

    # Arguments:
    #   name: Name of the RenderEngine ( String )
    # Returns: RenderEngine
    def getRenderEngineByName( name )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( name )

      # BIMserver request
      request( { name: name } )
    end # def getRenderEngineByName

    # Arguments:
    #   pluginClassName ( String )
    # Returns: Serializer supporting the given ContentType
    def getSerializerByPluginClassName( pluginClassName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( pluginClassName )

      # BIMserver request
      request( { pluginClassName: pluginClassName } )
    end # def getSerializerByPluginClassName

    # Arguments:
    #   type: The type ( String )
    # Returns: SSerializerPluginDescriptor
    def getSerializerPluginDescriptor( type )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( type )

      # BIMserver request
      request( { type: type } )
    end # def getSerializerPluginDescriptor

    # Arguments:
    #   oid: ObjectID of the Deserializer ( Long )
    # Returns: Deserializer
    def getWebModuleById( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getWebModuleById

    # Arguments:
    #   name ( String )
    # Returns: Serializer
    def getWebModuleByName( name )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( name )

      # BIMserver request
      request( { name: name } )
    end # def getWebModuleByName

    # Arguments:
    #   contentType: Content type ( String )
    # Returns: Whether there is an active Serializer supporting the given ContentType
    def hasActiveSerializer( contentType )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( contentType )

      # BIMserver request
      request( { contentType: contentType } )
    end # def hasActiveSerializer

    # Arguments:
    #   oid ( Long )
    def setDefaultModelCompare( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def setDefaultModelCompare

    # Arguments:
    #   oid ( Long )
    def setDefaultModelMerger( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def setDefaultModelMerger

    # Arguments:
    #   oid ( Long )
    def setDefaultObjectIDM( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def setDefaultObjectIDM

    # Arguments:
    #   oid ( Long )
    def setDefaultQueryEngine( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def setDefaultQueryEngine

    # Arguments:
    #   oid ( Long )
    def setDefaultRenderEngine( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def setDefaultRenderEngine

    # Arguments:
    #   oid ( Long )
    def setDefaultSerializer( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def setDefaultSerializer

    # Arguments:
    #   oid ( Long )
    def setDefaultWebModule( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def setDefaultWebModule

    # Arguments:
    #   poid ( Long )
    #   settings ( SObjectType )
    def setPluginSettings( poid, settings )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::SObjectType( settings )

      # BIMserver request
      request( { poid: poid, settings: settings } )
    end # def setPluginSettings

    # Arguments:
    #   deserializer: Deserializer to update ( SDeserializerPluginConfiguration )
    def updateDeserializer( deserializer )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SDeserializerPluginConfiguration( deserializer )

      # BIMserver request
      request( { deserializer: deserializer } )
    end # def updateDeserializer

    # Arguments:
    #   internalService ( SInternalServicePluginConfiguration )
    def updateInternalService( internalService )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SInternalServicePluginConfiguration( internalService )

      # BIMserver request
      request( { internalService: internalService } )
    end # def updateInternalService

    # Arguments:
    #   modelCompare: ModelCompare to update ( SModelComparePluginConfiguration )
    def updateModelCompare( modelCompare )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SModelComparePluginConfiguration( modelCompare )

      # BIMserver request
      request( { modelCompare: modelCompare } )
    end # def updateModelCompare

    # Arguments:
    #   modelMerger: ModelMerger to update ( SModelMergerPluginConfiguration )
    def updateModelMerger( modelMerger )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SModelMergerPluginConfiguration( modelMerger )

      # BIMserver request
      request( { modelMerger: modelMerger } )
    end # def updateModelMerger

    # Arguments:
    #   objectIDM: The ObjectIDM to update ( SObjectIDMPluginConfiguration )
    def updateObjectIDM( objectIDM )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SObjectIDMPluginConfiguration( objectIDM )

      # BIMserver request
      request( { objectIDM: objectIDM } )
    end # def updateObjectIDM

    # Arguments:
    #   queryEngine: QueryEngine to update ( SQueryEnginePluginConfiguration )
    def updateQueryEngine( queryEngine )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SQueryEnginePluginConfiguration( queryEngine )

      # BIMserver request
      request( { queryEngine: queryEngine } )
    end # def updateQueryEngine

    # Arguments:
    #   renderEngine: RenderEngine to update ( SRenderEnginePluginConfiguration )
    def updateRenderEngine( renderEngine )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SRenderEnginePluginConfiguration( renderEngine )

      # BIMserver request
      request( { renderEngine: renderEngine } )
    end # def updateRenderEngine

    # Arguments:
    #   serializer: Serializer to update ( SSerializerPluginConfiguration )
    def updateSerializer( serializer )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SSerializerPluginConfiguration( serializer )

      # BIMserver request
      request( { serializer: serializer } )
    end # def updateSerializer
    end
  module Bimsie1ServiceInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.buildingsmart.bimsie1.Bimsie1ServiceInterface'
    @simple_name = 'Bimsie1ServiceInterface'

    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    #   extendedData: ExtendedData to add ( SExtendedData )
    def addExtendedDataToRevision( roid, extendedData )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::SExtendedData( extendedData )

      # BIMserver request
      request( { roid: roid, extendedData: extendedData } )
    end # def addExtendedDataToRevision

    # Description: Add a new project
    # Arguments:
    #   projectName: Name of the project, must be a unique name within all root-projects ( String )
    #   schema ( String )
    # Returns: The created Project
    def addProject( projectName, schema )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( projectName )
      #BIMserverAPI::TypeCheck::String( schema )

      # BIMserver request
      request( { projectName: projectName, schema: schema } )
    end # def addProject

    # Description: Add a new project as a subproject of another project
    # Arguments:
    #   projectName: Name of the project, must be a unique name within the parent project ( String )
    #   parentPoid: The ObjectID of the parent project ( Long )
    #   schema ( String )
    # Returns: The created Project
    def addProjectAsSubProject( projectName, parentPoid, schema )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( projectName )
      #BIMserverAPI::TypeCheck::Long( parentPoid )
      #BIMserverAPI::TypeCheck::String( schema )

      # BIMserver request
      request( { projectName: projectName, parentPoid: parentPoid, schema: schema } )
    end # def addProjectAsSubProject

    # Description: Branch a given Revision as a new Revision in the given Project, branching is always synchronous
    # Arguments:
    #   roid: ObjectID of the Revision to branch ( Long )
    #   destPoid: ObjectID of the Project to which a branch should be made ( Long )
    #   comment: A comment describing the new Revision ( String )
    #   sync ( Boolean )
    # Returns: The result of this branch, you can use getCheckinState with this ID
    def branchToExistingProject( roid, destPoid, comment, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( destPoid )
      #BIMserverAPI::TypeCheck::String( comment )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { roid: roid, destPoid: destPoid, comment: comment, sync: sync } )
    end # def branchToExistingProject

    # Description: Branch a given Revision as a new Revision on a new Project, branching is always synchronous
    # Arguments:
    #   roid: ObjectID of the Revision to branch ( Long )
    #   projectName: Name of the to be created Project ( String )
    #   comment: A comment describing the new Revision ( String )
    #   sync ( Boolean )
    # Returns: The result of this branch, you can use getCheckinState with this ID
    def branchToNewProject( roid, projectName, comment, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::String( projectName )
      #BIMserverAPI::TypeCheck::String( comment )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { roid: roid, projectName: projectName, comment: comment, sync: sync } )
    end # def branchToNewProject

    # Description: Checkin a new model by sending a serialized form
    # Arguments:
    #   poid: The Project's ObjectID ( Long )
    #   comment: A comment ( String )
    #   deserializerOid: ObjectId of the deserializer to use, use getAllDeserializers to get a list of available deserializers ( Long )
    #   fileSize: The size of the file in bytes ( Long )
    #   fileName ( String )
    #   data ( DataHandler )
    #   sync: Whether the call should return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: A topicId, which you can use for the Bimsie1NotificationRegistryInterface.getProgress method
    def checkin( poid, comment, deserializerOid, fileSize, fileName, data, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::String( comment )
      #BIMserverAPI::TypeCheck::Long( deserializerOid )
      #BIMserverAPI::TypeCheck::Long( fileSize )
      #BIMserverAPI::TypeCheck::String( fileName )
      #BIMserverAPI::TypeCheck::DataHandler( data )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { poid: poid, comment: comment, deserializerOid: deserializerOid, fileSize: fileSize, fileName: fileName, data: data, sync: sync } )
    end # def checkin

    # Description: Checkin a new model by sending a serialized form
    # Arguments:
    #   poid: The Project's ObjectID ( Long )
    #   comment: A comment ( String )
    #   deserializerOid: ObjectId of the deserializer to use, use getAllDeserializers to get a list of available deserializers ( Long )
    #   fileName ( String )
    #   url: A URL to the file ( String )
    #   sync: Whether the call should return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: A topicId, which you can use for the Bimsie1NotificationRegistryInterface.getProgress method
    def checkinFromUrl( poid, comment, deserializerOid, fileName, url, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::String( comment )
      #BIMserverAPI::TypeCheck::Long( deserializerOid )
      #BIMserverAPI::TypeCheck::String( fileName )
      #BIMserverAPI::TypeCheck::String( url )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { poid: poid, comment: comment, deserializerOid: deserializerOid, fileName: fileName, url: url, sync: sync } )
    end # def checkinFromUrl

    # Description: Checkout an existing model, checkout is the same as download, except a "checkout" will tell the server and other users you are working on it
    # Arguments:
    #   roid: Revision ObjectID ( Long )
    #   serializerOid: ObjectId of the serializer to use, use getAllSerializers to find availble serializeres ( Long )
    #   sync: Whether to return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: A topicId, which you can use for the Bimsie1NotificationRegistryInterface.getProgress method
    def checkout( roid, serializerOid, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( serializerOid )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { roid: roid, serializerOid: serializerOid, sync: sync } )
    end # def checkout

    # Description: Delete a Project, Projects can be undeleted with the undeleteProject method
    # Arguments:
    #   poid: ObjectID of the Project to delete ( Long )
    # Returns: Whether the Project has been deleted
    def deleteProject( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def deleteProject

    # Description: Download a single revision of a model in a serialized format
    # Arguments:
    #   roid: Revision ObjectID ( Long )
    #   serializerOid: ObjectId of the serializer to use, use getAllSerializers to find availble serializeres ( Long )
    #   showOwn: Whether to return revisions created by the current user ( Boolean )
    #   sync: Whether to return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: A topicId, which you can use for the Bimsie1NotificationRegistryInterface.getProgress method
    def download( roid, serializerOid, showOwn, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( serializerOid )
      #BIMserverAPI::TypeCheck::Boolean( showOwn )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { roid: roid, serializerOid: serializerOid, showOwn: showOwn, sync: sync } )
    end # def download

    # Description: Download a model in a serialized format by giving a set of revisions and a set of guids to filter on
    # Arguments:
    #   roids: A set of Revision ObjectIDs ( Set )
    #   guids: A set of IFC guids ( Set )
    #   serializerOid: OID of the serializer to use ( Long )
    #   deep ( Boolean )
    #   sync: Whether to return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: An id, which you can use for the getDownloadState and getDownloadData methods
    def downloadByGuids( roids, guids, serializerOid, deep, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Set( roids )
      #BIMserverAPI::TypeCheck::Set( guids )
      #BIMserverAPI::TypeCheck::Long( serializerOid )
      #BIMserverAPI::TypeCheck::Boolean( deep )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { roids: roids, guids: guids, serializerOid: serializerOid, deep: deep, sync: sync } )
    end # def downloadByGuids

    # Description: Download a model in serialized format by giving a set of revisions and a set of class names to filter on
    # Arguments:
    #   roids: A set of Revision ObjectIDs ( Set )
    #   jsonQuery ( String )
    #   serializerOid: ObjectId of the serializer to use, use getAllSerializers to find availble serializeres ( Long )
    #   sync: Whether to return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: A topicId, which you can use for the Bimsie1NotificationRegistryInterface.getProgress method
    def downloadByJsonQuery( roids, jsonQuery, serializerOid, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Set( roids )
      #BIMserverAPI::TypeCheck::String( jsonQuery )
      #BIMserverAPI::TypeCheck::Long( serializerOid )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { roids: roids, jsonQuery: jsonQuery, serializerOid: serializerOid, sync: sync } )
    end # def downloadByJsonQuery

    # Description: Download a model in a serialized format by giving a set of revisions and a set of names to filter on
    # Arguments:
    #   roids: A set of Revision ObjectIDs ( Set )
    #   names: A set of names, the names should be exact matches for now ( Set )
    #   serializerOid: OID of the serializer to use ( Long )
    #   deep ( Boolean )
    #   sync: Whether to return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: An id, which you can use for the getDownloadState and getDownloadData methods
    def downloadByNames( roids, names, serializerOid, deep, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Set( roids )
      #BIMserverAPI::TypeCheck::Set( names )
      #BIMserverAPI::TypeCheck::Long( serializerOid )
      #BIMserverAPI::TypeCheck::Boolean( deep )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { roids: roids, names: names, serializerOid: serializerOid, deep: deep, sync: sync } )
    end # def downloadByNames

    # Description: Download a model in a serialized format by giving a set of revisions and a set of Object IDs
    # Arguments:
    #   roids: A set of Revision ObjectIDs ( Set )
    #   oids: A set of ObjectIDs ( Set )
    #   serializerOid: ObjectId of the serializer to use, use getAllSerializers to find availble serializeres ( Long )
    #   sync: Whether to return immediately (async) or wait for completion (sync) ( Boolean )
    #   deep ( Boolean )
    # Returns: A topicId, which you can use for the Bimsie1NotificationRegistryInterface.getProgress method
    def downloadByOids( roids, oids, serializerOid, sync, deep )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Set( roids )
      #BIMserverAPI::TypeCheck::Set( oids )
      #BIMserverAPI::TypeCheck::Long( serializerOid )
      #BIMserverAPI::TypeCheck::Boolean( sync )
      #BIMserverAPI::TypeCheck::Boolean( deep )

      # BIMserver request
      request( { roids: roids, oids: oids, serializerOid: serializerOid, sync: sync, deep: deep } )
    end # def downloadByOids

    # Description: Download a model in serialized format by giving a set of revisions and a set of class names to filter on
    # Arguments:
    #   roids: A set of Revision ObjectIDs ( Set )
    #   schema ( String )
    #   classNames: A set of class names to filter on (e.g. "IfcWindow") ( Set )
    #   serializerOid: ObjectId of the serializer to use, use getAllSerializers to find availble serializeres ( Long )
    #   includeAllSubtypes: Whether to query all (recursive) subtypes of each gives class ( Boolean )
    #   useObjectIDM ( Boolean )
    #   deep ( Boolean )
    #   sync: Whether to return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: A topicId, which you can use for the Bimsie1NotificationRegistryInterface.getProgress method
    def downloadByTypes( roids, schema, classNames, serializerOid, includeAllSubtypes, useObjectIDM, deep, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Set( roids )
      #BIMserverAPI::TypeCheck::String( schema )
      #BIMserverAPI::TypeCheck::Set( classNames )
      #BIMserverAPI::TypeCheck::Long( serializerOid )
      #BIMserverAPI::TypeCheck::Boolean( includeAllSubtypes )
      #BIMserverAPI::TypeCheck::Boolean( useObjectIDM )
      #BIMserverAPI::TypeCheck::Boolean( deep )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { roids: roids, schema: schema, classNames: classNames, serializerOid: serializerOid, includeAllSubtypes: includeAllSubtypes, useObjectIDM: useObjectIDM, deep: deep, sync: sync } )
    end # def downloadByTypes

    # Arguments:
    #   roid: ObjectID of the Revision to perform this query on ( Long )
    #   qeid ( Long )
    #   code: The Java code, should be an implementation of the QueryInterface interface ( String )
    #   sync ( Boolean )
    #   serializerOid ( Long )
    # Returns: SRunResult
    def downloadQuery( roid, qeid, code, sync, serializerOid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( qeid )
      #BIMserverAPI::TypeCheck::String( code )
      #BIMserverAPI::TypeCheck::Boolean( sync )
      #BIMserverAPI::TypeCheck::Long( serializerOid )

      # BIMserver request
      request( { roid: roid, qeid: qeid, code: code, sync: sync, serializerOid: serializerOid } )
    end # def downloadQuery

    # Description: Download a model in a serialized format by giving a set of revisions
    # Arguments:
    #   roids: A set of Revision ObjectIDs ( Set )
    #   serializerOid: ObjectId of the serializer to use, use getAllSerializers to find availble serializeres ( Long )
    #   sync: Whether to return immediately (async) or wait for completion (sync) ( Boolean )
    # Returns: An id, which you can use for the getDownloadState and getDownloadData methods
    def downloadRevisions( roids, serializerOid, sync )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Set( roids )
      #BIMserverAPI::TypeCheck::Long( serializerOid )
      #BIMserverAPI::TypeCheck::Boolean( sync )

      # BIMserver request
      request( { roids: roids, serializerOid: serializerOid, sync: sync } )
    end # def downloadRevisions

    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    # Returns: ExtendedData
    def getAllExtendedDataOfRevision( roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { roid: roid } )
    end # def getAllExtendedDataOfRevision

    # Description: Get a list of all Projects the user is authorized for
    # Arguments:
    #   onlyTopLevel ( Boolean )
    #   onlyActive ( Boolean )
    # Returns: A list of Projects
    def getAllProjects( onlyTopLevel, onlyActive )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Boolean( onlyTopLevel )
      #BIMserverAPI::TypeCheck::Boolean( onlyActive )

      # BIMserver request
      request( { onlyTopLevel: onlyTopLevel, onlyActive: onlyActive } )
    end # def getAllProjects

    # Arguments:
    def getAllProjectsSmall(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAllProjectsSmall

    # Description: Get a list of all Revisions of a Project
    # Arguments:
    #   poid: ObjectID of the Project ( Long )
    # Returns: A list of all Revisions
    def getAllRevisionsOfProject( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getAllRevisionsOfProject

    # Arguments:
    #   oid: ObjectID of the Deserializer ( Long )
    # Returns: Deserializer
    def getDeserializerById( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getDeserializerById

    # Arguments:
    #   deserializerName: Name of the Deserializer ( String )
    # Returns: Deserializer
    def getDeserializerByName( deserializerName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( deserializerName )

      # BIMserver request
      request( { deserializerName: deserializerName } )
    end # def getDeserializerByName

    # Description: Get the data for a download/checkout
    # Arguments:
    #   actionId: The actionId returned by one of the download or checkout methods ( Long )
    # Returns: An SDownloadResult containing the serialized data
    def getDownloadData( actionId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( actionId )

      # BIMserver request
      request( { actionId: actionId } )
    end # def getDownloadData

    # Arguments:
    #   oid: ObjectID of the ExtendedData ( Long )
    # Returns: ExtendedData
    def getExtendedData( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getExtendedData

    # Arguments:
    #   oid: ObjectID of the ExtendedDataSchema ( Long )
    # Returns: ExtendedDataSchema
    def getExtendedDataSchemaById( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getExtendedDataSchemaById

    # Arguments:
    #   namespace ( String )
    def getExtendedDataSchemaByNamespace( namespace )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( namespace )

      # BIMserver request
      request( { namespace: namespace } )
    end # def getExtendedDataSchemaByNamespace

    # Arguments:
    #   poid: ObjectID of the Project ( Long )
    # Returns: The Project
    def getProjectByPoid( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getProjectByPoid

    # Arguments:
    #   poid: ObjectID of the Project ( Long )
    # Returns: The Project
    def getProjectSmallByPoid( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getProjectSmallByPoid

    # Arguments:
    #   name ( String )
    # Returns: A list of projects with the given name (can be multiple because subprojects are also returned)
    def getProjectsByName( name )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( name )

      # BIMserver request
      request( { name: name } )
    end # def getProjectsByName

    # Arguments:
    #   oid: ObjectID of the QueryEngine ( Long )
    # Returns: QueryEngine
    def getQueryEngineById( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getQueryEngineById

    # Arguments:
    #   name: Name of the QueryEngine ( String )
    # Returns: QueryEngine
    def getQueryEngineByName( name )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( name )

      # BIMserver request
      request( { name: name } )
    end # def getQueryEngineByName

    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    # Returns: The Revision
    def getRevision( roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { roid: roid } )
    end # def getRevision

    # Arguments:
    #   contentType: The ContentType ( String )
    # Returns: Serializer supporting the given ContentType
    def getSerializerByContentType( contentType )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( contentType )

      # BIMserver request
      request( { contentType: contentType } )
    end # def getSerializerByContentType

    # Arguments:
    #   oid: ObjectID of the Serializer ( Long )
    # Returns: Serializer
    def getSerializerById( oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { oid: oid } )
    end # def getSerializerById

    # Arguments:
    #   serializerName: Name of the Serializer ( String )
    # Returns: Serializer
    def getSerializerByName( serializerName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( serializerName )

      # BIMserver request
      request( { serializerName: serializerName } )
    end # def getSerializerByName

    # Arguments:
    #   poid ( Long )
    # Returns: A list of all subprojects of the given project
    def getSubProjects( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getSubProjects

    # Arguments:
    #   extension ( String )
    #   poid ( Long )
    # Returns: The name of the suggested deserializer
    def getSuggestedDeserializerForExtension( extension, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( extension )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { extension: extension, poid: poid } )
    end # def getSuggestedDeserializerForExtension

    # Description: Terminate a long running action
    # Arguments:
    #   actionId: The actionId returned by one of the download or checkout methods ( Long )
    # Returns: An SDownloadResult containing the serialized data
    def terminateLongRunningAction( actionId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( actionId )

      # BIMserver request
      request( { actionId: actionId } )
    end # def terminateLongRunningAction

    # Description: Undelete a previously deleted Project, Projets can be deleted with the deleteProject method
    # Arguments:
    #   poid: The ObjectID of the Project to undelete ( Long )
    # Returns: Whether the Project was successfully undeleted
    def undeleteProject( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def undeleteProject
    end
  module Bimsie1NotificationInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.buildingsmart.bimsie1.Bimsie1NotificationInterface'
    @simple_name = 'Bimsie1NotificationInterface'

    # Arguments:
    #   poid ( Long )
    #   topicId ( Long )
    def closedProgressOnProjectTopic( poid, topicId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( topicId )

      # BIMserver request
      request( { poid: poid, topicId: topicId } )
    end # def closedProgressOnProjectTopic

    # Arguments:
    #   poid ( Long )
    #   roid ( Long )
    #   topicId ( Long )
    def closedProgressOnRevisionTopic( poid, roid, topicId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( topicId )

      # BIMserver request
      request( { poid: poid, roid: roid, topicId: topicId } )
    end # def closedProgressOnRevisionTopic

    # Arguments:
    #   topicId ( Long )
    def closedProgressOnServerTopic( topicId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( topicId )

      # BIMserver request
      request( { topicId: topicId } )
    end # def closedProgressOnServerTopic

    # Arguments:
    #   roid ( Long )
    #   edid ( Long )
    def newExtendedData( roid, edid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( edid )

      # BIMserver request
      request( { roid: roid, edid: edid } )
    end # def newExtendedData

    # Arguments:
    #   poid ( Long )
    #   topicId ( Long )
    def newProgressOnProjectTopic( poid, topicId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( topicId )

      # BIMserver request
      request( { poid: poid, topicId: topicId } )
    end # def newProgressOnProjectTopic

    # Arguments:
    #   poid ( Long )
    #   roid ( Long )
    #   topicId ( Long )
    def newProgressOnRevisionTopic( poid, roid, topicId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( topicId )

      # BIMserver request
      request( { poid: poid, roid: roid, topicId: topicId } )
    end # def newProgressOnRevisionTopic

    # Arguments:
    #   topicId ( Long )
    def newProgressOnServerTopic( topicId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( topicId )

      # BIMserver request
      request( { topicId: topicId } )
    end # def newProgressOnServerTopic

    # Arguments:
    #   topicId ( Long )
    def newProgressTopic( topicId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( topicId )

      # BIMserver request
      request( { topicId: topicId } )
    end # def newProgressTopic

    # Arguments:
    #   poid ( Long )
    def newProject( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def newProject

    # Arguments:
    #   poid ( Long )
    #   roid ( Long )
    def newRevision( poid, roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { poid: poid, roid: roid } )
    end # def newRevision

    # Arguments:
    #   uoid ( Long )
    def newUser( uoid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( uoid )

      # BIMserver request
      request( { uoid: uoid } )
    end # def newUser

    # Arguments:
    #   topicId ( Long )
    #   state ( SLongActionState )
    def progress( topicId, state )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( topicId )
      #BIMserverAPI::TypeCheck::SLongActionState( state )

      # BIMserver request
      request( { topicId: topicId, state: state } )
    end # def progress
    end
  module Bimsie1RemoteServiceInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.buildingsmart.bimsie1.Bimsie1RemoteServiceInterface'
    @simple_name = 'Bimsie1RemoteServiceInterface'

    # Arguments:
    #   serviceIdentifier ( String )
    #   token ( String )
    def getPrivateProfiles( serviceIdentifier, token )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( serviceIdentifier )
      #BIMserverAPI::TypeCheck::String( token )

      # BIMserver request
      request( { serviceIdentifier: serviceIdentifier, token: token } )
    end # def getPrivateProfiles

    # Arguments:
    #   serviceIdentifier ( String )
    def getPublicProfiles( serviceIdentifier )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( serviceIdentifier )

      # BIMserver request
      request( { serviceIdentifier: serviceIdentifier } )
    end # def getPublicProfiles

    # Arguments:
    #   serviceIdentifier ( String )
    def getService( serviceIdentifier )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( serviceIdentifier )

      # BIMserver request
      request( { serviceIdentifier: serviceIdentifier } )
    end # def getService

    # Arguments:
    #   poid ( Long )
    #   edid ( Long )
    #   soid ( Long )
    #   serviceIdentifier ( String )
    #   profileIdentifier ( String )
    #   userToken ( String )
    #   token ( String )
    #   apiUrl ( String )
    def newExtendedDataOnProject( poid, edid, soid, serviceIdentifier, profileIdentifier, userToken, token, apiUrl )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( edid )
      #BIMserverAPI::TypeCheck::Long( soid )
      #BIMserverAPI::TypeCheck::String( serviceIdentifier )
      #BIMserverAPI::TypeCheck::String( profileIdentifier )
      #BIMserverAPI::TypeCheck::String( userToken )
      #BIMserverAPI::TypeCheck::String( token )
      #BIMserverAPI::TypeCheck::String( apiUrl )

      # BIMserver request
      request( { poid: poid, edid: edid, soid: soid, serviceIdentifier: serviceIdentifier, profileIdentifier: profileIdentifier, userToken: userToken, token: token, apiUrl: apiUrl } )
    end # def newExtendedDataOnProject

    # Arguments:
    #   poid ( Long )
    #   roid ( Long )
    #   edid ( Long )
    #   soid ( Long )
    #   serviceIdentifier ( String )
    #   profileIdentifier ( String )
    #   userToken ( String )
    #   token ( String )
    #   apiUrl ( String )
    def newExtendedDataOnRevision( poid, roid, edid, soid, serviceIdentifier, profileIdentifier, userToken, token, apiUrl )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( edid )
      #BIMserverAPI::TypeCheck::Long( soid )
      #BIMserverAPI::TypeCheck::String( serviceIdentifier )
      #BIMserverAPI::TypeCheck::String( profileIdentifier )
      #BIMserverAPI::TypeCheck::String( userToken )
      #BIMserverAPI::TypeCheck::String( token )
      #BIMserverAPI::TypeCheck::String( apiUrl )

      # BIMserver request
      request( { poid: poid, roid: roid, edid: edid, soid: soid, serviceIdentifier: serviceIdentifier, profileIdentifier: profileIdentifier, userToken: userToken, token: token, apiUrl: apiUrl } )
    end # def newExtendedDataOnRevision

    # Arguments:
    #   poid ( Long )
    #   roid ( Long )
    #   soid ( Long )
    #   serviceIdentifier ( String )
    #   profileIdentifier ( String )
    #   userToken ( String )
    #   token ( String )
    #   apiUrl ( String )
    def newRevision( poid, roid, soid, serviceIdentifier, profileIdentifier, userToken, token, apiUrl )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( soid )
      #BIMserverAPI::TypeCheck::String( serviceIdentifier )
      #BIMserverAPI::TypeCheck::String( profileIdentifier )
      #BIMserverAPI::TypeCheck::String( userToken )
      #BIMserverAPI::TypeCheck::String( token )
      #BIMserverAPI::TypeCheck::String( apiUrl )

      # BIMserver request
      request( { poid: poid, roid: roid, soid: soid, serviceIdentifier: serviceIdentifier, profileIdentifier: profileIdentifier, userToken: userToken, token: token, apiUrl: apiUrl } )
    end # def newRevision
    end
  module Bimsie1AuthInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.buildingsmart.bimsie1.Bimsie1AuthInterface'
    @simple_name = 'Bimsie1AuthInterface'

    # Arguments:
    # Returns: The method of access this ServiceInterface is using (SOAP, PB etc...)
    def getAccessMethod(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getAccessMethod

    # Arguments:
    # Returns: Whether this ServiceInterface is logged-in
    def isLoggedIn(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def isLoggedIn

    # Description: Login with a username/password combination
    # Arguments:
    #   username: The username (must be a valid e-mail address) ( String )
    #   password: The password ( String )
    # Returns: A token, use this token in subsequent calls. Read the documentation of the transport  mechanism (SOAP, Protocol Buffers or JSON) to see how to send the token
    def login( username, password )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( username )
      #BIMserverAPI::TypeCheck::String( password )

      # BIMserver request
      request( { username: username, password: password } )
    end # def login

    # Arguments:
    #   op ( String )
    #   returnUrl ( String )
    def loginOpenId( op, returnUrl )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( op )
      #BIMserverAPI::TypeCheck::String( returnUrl )

      # BIMserver request
      request( { op: op, returnUrl: returnUrl } )
    end # def loginOpenId

    # Arguments:
    #   token ( String )
    def loginUserToken( token )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( token )

      # BIMserver request
      request( { token: token } )
    end # def loginUserToken

    # Description: Logout
    # Arguments:
    def logout(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def logout

    # Arguments:
    #   queryString ( String )
    def validateOpenId( queryString )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::String( queryString )

      # BIMserver request
      request( { queryString: queryString } )
    end # def validateOpenId
    end
  module Bimsie1LowLevelInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.buildingsmart.bimsie1.Bimsie1LowLevelInterface'
    @simple_name = 'Bimsie1LowLevelInterface'

    # Description: Abort a transaction, changes will not be saved
    # Arguments:
    #   tid: The TransactionID ( Long )
    def abortTransaction( tid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )

      # BIMserver request
      request( { tid: tid } )
    end # def abortTransaction

    # Description: Add a boolean attribute. Will be added at the end of the list
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute to add a value to ( String )
    #   value: New Boolean value ( Boolean )
    def addBooleanAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Boolean( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def addBooleanAttribute

    # Description: Add a double attribute. Will be added at the end of the list
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute to add a value to ( String )
    #   value: New Double value ( Double )
    def addDoubleAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Double( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def addDoubleAttribute

    # Description: Add an integer attribute. Will be added at the end of the list
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute to add a value to ( String )
    #   value: New Integer value ( Integer )
    def addIntegerAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def addIntegerAttribute

    # Description: Add a reference to a list. Will be added at the end of the list
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   referenceName: Name of the reference to add a reference to ( String )
    #   referenceOid: ObjectID of the referenced Object ( Long )
    def addReference( tid, oid, referenceName, referenceOid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( referenceName )
      #BIMserverAPI::TypeCheck::Long( referenceOid )

      # BIMserver request
      request( { tid: tid, oid: oid, referenceName: referenceName, referenceOid: referenceOid } )
    end # def addReference

    # Description: Add a String attribute. Will be added at the end of the list
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute to add a value to ( String )
    #   value: New String value ( String )
    def addStringAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::String( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def addStringAttribute

    # Description: Commit a transaction, changes will be saved, a transaction must be started by startTransaction first
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   comment: Comment describing what has changed ( String )
    # Returns: ObjectID of the newly created Revision
    def commitTransaction( tid, comment )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::String( comment )

      # BIMserver request
      request( { tid: tid, comment: comment } )
    end # def commitTransaction

    # Description: Count the amount of object a certain revision has of the given type
    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    #   className: Name of the type to query ( String )
    # Returns: The amount of objects found
    def count( roid, className )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::String( className )

      # BIMserver request
      request( { roid: roid, className: className } )
    end # def count

    # Description: Create a new Object
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   className: The type of the new object ( String )
    # Returns: The ObjectID of the newly created object
    def createObject( tid, className )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::String( className )

      # BIMserver request
      request( { tid: tid, className: className } )
    end # def createObject

    # Description: Get a boolean value of an attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: Boolean value of attribute
    def getBooleanAttribute( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getBooleanAttribute

    # Description: Retrieve a boolean attribute at the given index
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   index: Index of the attribute ( Integer )
    # Returns: A Boolean value of the given index
    def getBooleanAttributeAtIndex( tid, oid, attributeName, index )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( index )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, index: index } )
    end # def getBooleanAttributeAtIndex

    # Description: Retrieve a list of boolean attributes
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: A list of boolean values
    def getBooleanAttributes( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getBooleanAttributes

    # Description: Get a byte[] attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: byte[] value
    def getByteArrayAttribute( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getByteArrayAttribute

    # Description: Get a list of byte[] values
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: List of byte[] values
    def getByteArrayAttributes( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getByteArrayAttributes

    # Description: Get all the objects matching the given GUIDs as Data Objects
    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    #   guid: An IFC GUID ( String )
    # Returns: The object with the given GUID in the given Revision, of null if not found
    def getDataObjectByGuid( roid, guid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::String( guid )

      # BIMserver request
      request( { roid: roid, guid: guid } )
    end # def getDataObjectByGuid

    # Description: Get an object from the given revision as a Data Object
    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    #   oid: ObjectID of the object to get ( Long )
    # Returns: An SDataObject
    def getDataObjectByOid( roid, oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { roid: roid, oid: oid } )
    end # def getDataObjectByOid

    # Description: Get all the objects of a certain revision in Data Objects
    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    # Returns: A list of DataObjects from the given Revision
    def getDataObjects( roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { roid: roid } )
    end # def getDataObjects

    # Description: Get all the objects of a certain type in Data Objects
    # Arguments:
    #   roid: ObjectID of the Revision ( Long )
    #   packageName ( String )
    #   className: Name of the class to query (e.g. "IfcWindow") ( String )
    #   flat ( Boolean )
    # Returns: A list of DataObjects from the given Revision matching the given class
    def getDataObjectsByType( roid, packageName, className, flat )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::String( packageName )
      #BIMserverAPI::TypeCheck::String( className )
      #BIMserverAPI::TypeCheck::Boolean( flat )

      # BIMserver request
      request( { roid: roid, packageName: packageName, className: className, flat: flat } )
    end # def getDataObjectsByType

    # Description: Get a list of double values (for example Coordinates of IfcCartesianPoint)
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: List of double values
    def getDoubleAttribute( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getDoubleAttribute

    # Description: Get a double value of an attribute at a given index
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   index: Index within the list ( Integer )
    # Returns: Double value of this attribute
    def getDoubleAttributeAtIndex( tid, oid, attributeName, index )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( index )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, index: index } )
    end # def getDoubleAttributeAtIndex

    # Description: Get a list of double values
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: A list of double values
    def getDoubleAttributes( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getDoubleAttributes

    # Description: Get an enum attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: Enum value (as String)
    def getEnumAttribute( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getEnumAttribute

    # Description: Get an integer attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: Integer value of attribute
    def getIntegerAttribute( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getIntegerAttribute

    # Description: Get an integer attribute at the given index
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   index ( Integer )
    def getIntegerAttributeAtIndex( tid, oid, attributeName, index )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( index )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, index: index } )
    end # def getIntegerAttributeAtIndex

    # Description: Get a list of integer attributes
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: List of integer attributes
    def getIntegerAttributes( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getIntegerAttributes

    # Description: Get a long value of an attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: Long value of attribute
    def getLongAttribute( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getLongAttribute

    # Description: Get a long attribute at a given index
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   index ( Integer )
    # Returns: Long value at index
    def getLongAttributeAtIndex( tid, oid, attributeName, index )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( index )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, index: index } )
    end # def getLongAttributeAtIndex

    # Description: Get a reference
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   referenceName: Name of the reference ( String )
    # Returns: ObjectID of the referred object
    def getReference( tid, oid, referenceName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( referenceName )

      # BIMserver request
      request( { tid: tid, oid: oid, referenceName: referenceName } )
    end # def getReference

    # Description: Get a list of references
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   referenceName: Name of the reference ( String )
    # Returns: A list of ObjectID's
    def getReferences( tid, oid, referenceName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( referenceName )

      # BIMserver request
      request( { tid: tid, oid: oid, referenceName: referenceName } )
    end # def getReferences

    # Description: Get the String value of an attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: The String value
    def getStringAttribute( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getStringAttribute

    # Description: Get a list of attributes of type String
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    # Returns: A list of Strings
    def getStringAttributes( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def getStringAttributes

    # Description: Remove all references (clear the list of references) of the given object + reference
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object ( Long )
    #   referenceName: Name of the reference from which to remove all references ( String )
    def removeAllReferences( tid, oid, referenceName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( referenceName )

      # BIMserver request
      request( { tid: tid, oid: oid, referenceName: referenceName } )
    end # def removeAllReferences

    # Description: Remove an attribute from a list at a certain index
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute from which to remove an item ( String )
    #   index: Index of the item to remove ( Integer )
    def removeAttribute( tid, oid, attributeName, index )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( index )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, index: index } )
    end # def removeAttribute

    # Description: Remove an object
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to remove ( Long )
    def removeObject( tid, oid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )

      # BIMserver request
      request( { tid: tid, oid: oid } )
    end # def removeObject

    # Description: Remove a single reference by it's index in the list
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   referenceName: Name of the reference from which to remove an item ( String )
    #   index: Index of the item to remove ( Integer )
    def removeReference( tid, oid, referenceName, index )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( referenceName )
      #BIMserverAPI::TypeCheck::Integer( index )

      # BIMserver request
      request( { tid: tid, oid: oid, referenceName: referenceName, index: index } )
    end # def removeReference

    # Description: Set a boolean attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   value: New Boolean value ( Boolean )
    def setBooleanAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Boolean( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def setBooleanAttribute

    # Description: Set a boolean attribute at the given index
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   index: Index within the list ( Integer )
    #   value: New Boolean value ( Boolean )
    def setBooleanAttributeAtIndex( tid, oid, attributeName, index, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( index )
      #BIMserverAPI::TypeCheck::Boolean( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, index: index, value: value } )
    end # def setBooleanAttributeAtIndex

    # Description: Set a list of boolean attributes
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   values: A list of boolean values ( List )
    def setBooleanAttributes( tid, oid, attributeName, values )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::List( values )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, values: values } )
    end # def setBooleanAttributes

    # Description: Set a byte[] attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   value: new ByteArray value ( ByteArray )
    def setByteArrayAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::ByteArray( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def setByteArrayAttribute

    # Description: Set a double attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   value: New Double value ( Double )
    def setDoubleAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Double( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def setDoubleAttribute

    # Description: Set a double attribute at a specific index
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   index ( Integer )
    #   value: New Double value ( Double )
    def setDoubleAttributeAtIndex( tid, oid, attributeName, index, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( index )
      #BIMserverAPI::TypeCheck::Double( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, index: index, value: value } )
    end # def setDoubleAttributeAtIndex

    # Description: Set a list of double values (for example Coordinates of IfcCartesianPoint)
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   values: List of double values ( List )
    def setDoubleAttributes( tid, oid, attributeName, values )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::List( values )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, values: values } )
    end # def setDoubleAttributes

    # Description: Set an enum attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   value: New Enum value (name of the enum item) ( String )
    def setEnumAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::String( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def setEnumAttribute

    # Description: Set an integer attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   value: new Integer value ( Integer )
    def setIntegerAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def setIntegerAttribute

    # Description: Set an integer attribute at a given index
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   index: Index within the list ( Integer )
    #   value: new Integer value ( Integer )
    def setIntegerAttributeAtIndex( tid, oid, attributeName, index, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( index )
      #BIMserverAPI::TypeCheck::Integer( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, index: index, value: value } )
    end # def setIntegerAttributeAtIndex

    # Description: Set a list of integer attributes
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   values: A list of integer values ( List )
    def setIntegerAttributes( tid, oid, attributeName, values )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::List( values )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, values: values } )
    end # def setIntegerAttributes

    # Description: Set a long attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   value: new Integer value ( Long )
    def setLongAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Long( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def setLongAttribute

    # Description: Set a long attribute at a given index
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   index: Index within the list ( Integer )
    #   value: new Integer value ( Long )
    def setLongAttributeAtIndex( tid, oid, attributeName, index, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( index )
      #BIMserverAPI::TypeCheck::Long( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, index: index, value: value } )
    end # def setLongAttributeAtIndex

    # Description: Set a list of long attributes
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   values: List of long values ( List )
    def setLongAttributes( tid, oid, attributeName, values )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::List( values )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, values: values } )
    end # def setLongAttributes

    # Description: Set a reference
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   referenceName: Name of the reference ( String )
    #   referenceOid: ObjectID of the newly referred object ( Long )
    def setReference( tid, oid, referenceName, referenceOid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( referenceName )
      #BIMserverAPI::TypeCheck::Long( referenceOid )

      # BIMserver request
      request( { tid: tid, oid: oid, referenceName: referenceName, referenceOid: referenceOid } )
    end # def setReference

    # Description: Set the String value of an attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   value: New String value ( String )
    def setStringAttribute( tid, oid, attributeName, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::String( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, value: value } )
    end # def setStringAttribute

    # Description: Set the String value at a certain index in a list of an attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   index ( Integer )
    #   value: New String value ( String )
    def setStringAttributeAtIndex( tid, oid, attributeName, index, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::Integer( index )
      #BIMserverAPI::TypeCheck::String( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, index: index, value: value } )
    end # def setStringAttributeAtIndex

    # Description: Set a wrapped boolean attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   type: Type of the wrapped object ( String )
    #   value: New Boolean value ( Boolean )
    def setWrappedBooleanAttribute( tid, oid, attributeName, type, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::String( type )
      #BIMserverAPI::TypeCheck::Boolean( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, type: type, value: value } )
    end # def setWrappedBooleanAttribute

    # Description: Set a wrapped attribute's double value
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   type: Type of the wrapped value ( String )
    #   value: New Double value ( Double )
    def setWrappedDoubleAttribute( tid, oid, attributeName, type, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::String( type )
      #BIMserverAPI::TypeCheck::Double( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, type: type, value: value } )
    end # def setWrappedDoubleAttribute

    # Description: Set a warpped integer attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   type: Type of the wrapped object ( String )
    #   value: new Integer value ( Integer )
    def setWrappedIntegerAttribute( tid, oid, attributeName, type, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::String( type )
      #BIMserverAPI::TypeCheck::Integer( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, type: type, value: value } )
    end # def setWrappedIntegerAttribute

    # Description: Set a wrapped long value
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   type: Type of the wrapped object ( String )
    #   value: new Integer value ( Long )
    def setWrappedLongAttribute( tid, oid, attributeName, type, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::String( type )
      #BIMserverAPI::TypeCheck::Long( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, type: type, value: value } )
    end # def setWrappedLongAttribute

    # Description: Set the wrapped value of a String attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute ( String )
    #   type ( String )
    #   value: New String value ( String )
    def setWrappedStringAttribute( tid, oid, attributeName, type, value )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )
      #BIMserverAPI::TypeCheck::String( type )
      #BIMserverAPI::TypeCheck::String( value )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName, type: type, value: value } )
    end # def setWrappedStringAttribute

    # Description: Start a new transaction. You can commit the transaction with commitTransaction
    # Arguments:
    #   poid: ObjectID of the Project to start a transaction on ( Long )
    # Returns: A TransactionID (tid) that should be used for subsequent calls
    def startTransaction( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def startTransaction

    # Description: Unset an attribute
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   attributeName: Name of the attribute to unset ( String )
    def unsetAttribute( tid, oid, attributeName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( attributeName )

      # BIMserver request
      request( { tid: tid, oid: oid, attributeName: attributeName } )
    end # def unsetAttribute

    # Description: Unset a reference
    # Arguments:
    #   tid: The TransactionID ( Long )
    #   oid: ObjectID of the object to change ( Long )
    #   referenceName: Name of the reference to unset (null) ( String )
    def unsetReference( tid, oid, referenceName )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( tid )
      #BIMserverAPI::TypeCheck::Long( oid )
      #BIMserverAPI::TypeCheck::String( referenceName )

      # BIMserver request
      request( { tid: tid, oid: oid, referenceName: referenceName } )
    end # def unsetReference
    end
  module Bimsie1NotificationRegistryInterface
    extend self
    attr_reader :name, :simple_name
    @name = 'org.buildingsmart.bimsie1.Bimsie1NotificationRegistryInterface'
    @simple_name = 'Bimsie1NotificationRegistryInterface'

    # Arguments:
    #   topicId ( Long )
    def getProgress( topicId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( topicId )

      # BIMserver request
      request( { topicId: topicId } )
    end # def getProgress

    # Arguments:
    #   poid ( Long )
    def getProgressTopicsOnProject( poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { poid: poid } )
    end # def getProgressTopicsOnProject

    # Arguments:
    #   poid ( Long )
    #   roid ( Long )
    def getProgressTopicsOnRevision( poid, roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { poid: poid, roid: roid } )
    end # def getProgressTopicsOnRevision

    # Arguments:
    def getProgressTopicsOnServer(  )

      # parameter TypeCheck

      # BIMserver request
      request( {  } )
    end # def getProgressTopicsOnServer

    # Arguments:
    #   endPointId ( Long )
    #   poid ( Long )
    def registerChangeProgressOnProject( endPointId, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { endPointId: endPointId, poid: poid } )
    end # def registerChangeProgressOnProject

    # Arguments:
    #   endPointId ( Long )
    #   roid ( Long )
    #   poid ( Long )
    def registerChangeProgressOnRevision( endPointId, roid, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { endPointId: endPointId, roid: roid, poid: poid } )
    end # def registerChangeProgressOnRevision

    # Arguments:
    #   endPointId ( Long )
    def registerChangeProgressOnServer( endPointId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )

      # BIMserver request
      request( { endPointId: endPointId } )
    end # def registerChangeProgressOnServer

    # Arguments:
    #   endPointId ( Long )
    #   roid ( Long )
    def registerNewExtendedDataOnRevisionHandler( endPointId, roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { endPointId: endPointId, roid: roid } )
    end # def registerNewExtendedDataOnRevisionHandler

    # Arguments:
    #   endPointId ( Long )
    def registerNewProjectHandler( endPointId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )

      # BIMserver request
      request( { endPointId: endPointId } )
    end # def registerNewProjectHandler

    # Arguments:
    #   endPointId ( Long )
    def registerNewRevisionHandler( endPointId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )

      # BIMserver request
      request( { endPointId: endPointId } )
    end # def registerNewRevisionHandler

    # Arguments:
    #   endPointId ( Long )
    #   poid ( Long )
    def registerNewRevisionOnSpecificProjectHandler( endPointId, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { endPointId: endPointId, poid: poid } )
    end # def registerNewRevisionOnSpecificProjectHandler

    # Arguments:
    #   endPointId ( Long )
    def registerNewUserHandler( endPointId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )

      # BIMserver request
      request( { endPointId: endPointId } )
    end # def registerNewUserHandler

    # Arguments:
    #   topicId ( Long )
    #   endPointId ( Long )
    def registerProgressHandler( topicId, endPointId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( topicId )
      #BIMserverAPI::TypeCheck::Long( endPointId )

      # BIMserver request
      request( { topicId: topicId, endPointId: endPointId } )
    end # def registerProgressHandler

    # Arguments:
    #   type ( SProgressTopicType )
    #   poid ( Long )
    #   description ( String )
    def registerProgressOnProjectTopic( type, poid, description )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SProgressTopicType( type )
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::String( description )

      # BIMserver request
      request( { type: type, poid: poid, description: description } )
    end # def registerProgressOnProjectTopic

    # Arguments:
    #   type ( SProgressTopicType )
    #   poid ( Long )
    #   roid ( Long )
    #   description ( String )
    def registerProgressOnRevisionTopic( type, poid, roid, description )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SProgressTopicType( type )
      #BIMserverAPI::TypeCheck::Long( poid )
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::String( description )

      # BIMserver request
      request( { type: type, poid: poid, roid: roid, description: description } )
    end # def registerProgressOnRevisionTopic

    # Arguments:
    #   type ( SProgressTopicType )
    #   description ( String )
    def registerProgressTopic( type, description )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::SProgressTopicType( type )
      #BIMserverAPI::TypeCheck::String( description )

      # BIMserver request
      request( { type: type, description: description } )
    end # def registerProgressTopic

    # Arguments:
    #   endPointId ( Long )
    #   poid ( Long )
    def unregisterChangeProgressOnProject( endPointId, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { endPointId: endPointId, poid: poid } )
    end # def unregisterChangeProgressOnProject

    # Arguments:
    #   endPointId ( Long )
    #   roid ( Long )
    #   poid ( Long )
    def unregisterChangeProgressOnRevision( endPointId, roid, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )
      #BIMserverAPI::TypeCheck::Long( roid )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { endPointId: endPointId, roid: roid, poid: poid } )
    end # def unregisterChangeProgressOnRevision

    # Arguments:
    #   endPointId ( Long )
    def unregisterChangeProgressOnServer( endPointId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )

      # BIMserver request
      request( { endPointId: endPointId } )
    end # def unregisterChangeProgressOnServer

    # Arguments:
    #   endPointId ( Long )
    #   roid ( Long )
    def unregisterNewExtendedDataOnRevisionHandler( endPointId, roid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )
      #BIMserverAPI::TypeCheck::Long( roid )

      # BIMserver request
      request( { endPointId: endPointId, roid: roid } )
    end # def unregisterNewExtendedDataOnRevisionHandler

    # Arguments:
    #   endPointId ( Long )
    def unregisterNewProjectHandler( endPointId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )

      # BIMserver request
      request( { endPointId: endPointId } )
    end # def unregisterNewProjectHandler

    # Arguments:
    #   endPointId ( Long )
    def unregisterNewRevisionHandler( endPointId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )

      # BIMserver request
      request( { endPointId: endPointId } )
    end # def unregisterNewRevisionHandler

    # Arguments:
    #   endPointId ( Long )
    #   poid ( Long )
    def unregisterNewRevisionOnSpecificProjectHandler( endPointId, poid )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )
      #BIMserverAPI::TypeCheck::Long( poid )

      # BIMserver request
      request( { endPointId: endPointId, poid: poid } )
    end # def unregisterNewRevisionOnSpecificProjectHandler

    # Arguments:
    #   endPointId ( Long )
    def unregisterNewUserHandler( endPointId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( endPointId )

      # BIMserver request
      request( { endPointId: endPointId } )
    end # def unregisterNewUserHandler

    # Arguments:
    #   topicId ( Long )
    #   endPointId ( Long )
    def unregisterProgressHandler( topicId, endPointId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( topicId )
      #BIMserverAPI::TypeCheck::Long( endPointId )

      # BIMserver request
      request( { topicId: topicId, endPointId: endPointId } )
    end # def unregisterProgressHandler

    # Arguments:
    #   topicId ( Long )
    def unregisterProgressTopic( topicId )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( topicId )

      # BIMserver request
      request( { topicId: topicId } )
    end # def unregisterProgressTopic

    # Arguments:
    #   topicId ( Long )
    #   state ( SLongActionState )
    def updateProgressTopic( topicId, state )

      # parameter TypeCheck
      #BIMserverAPI::TypeCheck::Long( topicId )
      #BIMserverAPI::TypeCheck::SLongActionState( state )

      # BIMserver request
      request( { topicId: topicId, state: state } )
    end # def updateProgressTopic
    end
 end
end
