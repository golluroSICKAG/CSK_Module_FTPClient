---@diagnostic disable: redundant-parameter, undefined-global

--***************************************************************
-- Inside of this script, you will find the relevant parameters
-- for this module and its default values
--***************************************************************

local functions = {}

local function getParameters()

  local ftpClientParameters = {}

  ftpClientParameters.flowConfigPriority = CSK_FlowConfig ~= nil or false -- Status if FlowConfig should have priority for FlowConfig relevant configurations
  ftpClientParameters.serverIP = '192.168.0.201' -- IP of FTP server
  ftpClientParameters.imageName = 'unknown' -- Use to give a name for the image to send
  ftpClientParameters.isConnected = false -- Status if FTP connection should be established
  ftpClientParameters.mode = 'FTP' -- FTP / SFTP / FTPS -- Mode of FTP connection
  ftpClientParameters.port = 21 -- FTP + FTPS_EXPLICIT = 21 / FTPS_IMPLICIT = 990 / SFTP = 22

  ftpClientParameters.privateKeyPathSFTP = '' -- Path to private key for SFTP connection
  ftpClientParameters.privateKeyPasswordSFTP = '' -- Optional passphrase of private key
  ftpClientParameters.publicKeyFilePathSFTP = '' -- Optional path to public key for SFTP connection

  ftpClientParameters.knownHostFilePathSFTP = '' -- Path to SSH known_hosts file (SFTP)

  ftpClientParameters.caBundlePath = '' -- Path to certificate bundle in PEM format (used for FTPS)
  ftpClientParameters.clientCertificatePath = '' -- Path to client certificate (used for FTPS)
  ftpClientParameters.clientCertificateKeyFile = '' -- Path to clients prviate key file (used for FTPS)
  ftpClientParameters.clientCertificateKeyPassword = '' -- Optional passphrase for private key (used for FTPS)

  ftpClientParameters.peerVerification = false -- Status of peer verification if FTPS is active

  ftpClientParameters.securityProtocolFTPS = 'FTPS_EXPLICIT' -- FTPS_EXPLICIT, FTPS_IMPLICIT

  ftpClientParameters.user = 'unknown' -- FTP user
  ftpClientParameters.password = 'pass'-- FTP password for user
  ftpClientParameters.passiveMode = true -- FTP passive mode
  ftpClientParameters.asyncMode = false -- asyncMode
  ftpClientParameters.verboseMode = false -- verbose Mode of FTP connection

  ftpClientParameters.registeredEvents = {} -- Events to listen for incoming data to store on FTP server
  -- Sample of data content of entries within the "registeredEvents"
  -- ftpClientParameters.registeredEvents[id].eventName -- Name of event
  -- ftpClientParameters.registeredEvents[id].dataType -- Type of data to save
  -- ftpClientParameters.registeredEvents[id].autoFilename -- Status if filename should be created by timestamp

  return ftpClientParameters
end
functions.getParameters = getParameters

return functions