# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_SvillitRorPrototyp_session',
  :secret      => 'ee260f2c8532e1e4e724e4059416e2a540c81aac2a6e7fa80e92744a165a403f5ba8804efa1fc43350848bb2e03724b92ccf2b94fee0fd05f1d4f7efe684a0d8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
