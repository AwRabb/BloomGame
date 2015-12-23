# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_BloomServer_session',
  :secret      => 'e2a4491b7134884b0f2b9be35859f4a52fe959a7447a237e131cbc5d41869b05afd7bc974d63d0a5d7af596062ca5b69ea0209b9766b3064be27083a6e94293b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
